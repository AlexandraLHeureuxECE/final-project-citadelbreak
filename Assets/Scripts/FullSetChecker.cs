using UnityEngine;
using System.Collections;
using System.Reflection;

public class FullSetChecker : MonoBehaviour
{
    [SerializeField] private string defaultSetName = "Base";

    void Start()
    {
        StartCoroutine(WaitForEquipmentManager());
    }

    private IEnumerator WaitForEquipmentManager()
    {
        while (EquipmentManager.instance == null)
        {
            yield return null; // Wait until EquipmentManager is ready
        }

        EquipmentManager.instance.onEquipmentChanged += OnEquipmentChanged;
        Debug.Log("✅ FullSetChecker successfully hooked into EquipmentManager.");
    }

    private void OnEquipmentChanged(Equipment newItem, Equipment oldItem)
    {
        Debug.Log("🟡 Equipment changed: " + (newItem != null ? newItem.name : "null") + " | Triggering full set check.");
        CheckAndApplyFullSetModel();
    }

    private void CheckAndApplyFullSetModel()
    {
        Equipment[] currentEquipment = GetCurrentEquipmentArray();
        if (currentEquipment == null)
        {
            Debug.LogError("❌ Could not access currentEquipment.");
            return;
        }

        DebugCurrentEquipmentArray(currentEquipment); // 🧠 See what's equipped

        string currentSetName = null;
        bool isFullSet = true;

        for (int i = 0; i < currentEquipment.Length; i++)
        {
            if (i == (int)EquipmentSlot.Weapon || i == (int)EquipmentSlot.Shield)
                continue;

            Equipment item = currentEquipment[i];
            if (item == null)
            {
                isFullSet = false;
                Debug.Log($"⚠️ Missing item in slot {((EquipmentSlot)i)}.");
                break;
            }

            if (string.IsNullOrEmpty(item.armorSetName))
            {
                Debug.LogWarning($"⚠️ Item {item.name} has no armorSetName assigned!");
                isFullSet = false;
                break;
            }

            if (currentSetName == null)
            {
                currentSetName = item.armorSetName;
            }
            else if (item.armorSetName != currentSetName)
            {
                isFullSet = false;
                Debug.Log($"❌ Mismatched item: {item.name} is from set {item.armorSetName}, expected {currentSetName}.");
                break;
            }
        }

        string modelToActivate = isFullSet && !string.IsNullOrEmpty(currentSetName) ? currentSetName : defaultSetName;

        if (isFullSet)
            Debug.Log("✅ Full set equipped: " + currentSetName);
        else
            Debug.Log("❌ Full set not equipped. Reverting to default model: " + defaultSetName);

        if (ArmorModelManager.instance != null)
        {
            ArmorModelManager.instance.ActivateArmorSet(modelToActivate);
        }
        else
        {
            Debug.LogError("❌ ArmorModelManager.instance is null!");
        }
    }

    private Equipment[] GetCurrentEquipmentArray()
    {
        var field = typeof(EquipmentManager).GetField("currentEquipment", BindingFlags.NonPublic | BindingFlags.Instance);
        if (field != null)
        {
            return (Equipment[])field.GetValue(EquipmentManager.instance);
        }

        Debug.LogError("❌ Reflection failed: currentEquipment field not found in EquipmentManager.");
        return null;
    }

    private void DebugCurrentEquipmentArray(Equipment[] currentEquipment)
    {
        Debug.Log("---------- CURRENT EQUIPMENT DEBUG ----------");
        for (int i = 0; i < currentEquipment.Length; i++)
        {
            string slotName = ((EquipmentSlot)i).ToString();
            string itemName = currentEquipment[i] != null ? currentEquipment[i].name : "null";
            Debug.Log($"Slot {i} ({slotName}): {itemName}");
        }
        Debug.Log("---------------------------------------------");
    }
}
