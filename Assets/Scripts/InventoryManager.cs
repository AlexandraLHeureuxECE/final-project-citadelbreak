using UnityEngine;

public class InventoryManager : MonoBehaviour
{
    public GameObject InventoryMenu;
    private bool menuActivated = false;
    public ItemSlot [] itemSlot;

    void Start()
    {
        InventoryMenu.SetActive(false);
    }
    void Update()
    {
        if (Input.GetButtonDown("Inventory") && menuActivated){
            InventoryMenu.SetActive(false);
            menuActivated = false;
        }
        else if (Input.GetButtonDown("Inventory") && !menuActivated){
            InventoryMenu.SetActive(true);
            menuActivated = true;
        }
    }


    public void AddItem(string itemName, int quantity, Sprite itemSprite, string itemDescription)
    {
        bool itemAdded = false; // Flag to check if item is added or updated

        // Check if item already exists in inventory
        for (int i = 0; i < itemSlot.Length; i++)
        {
            if (itemSlot[i].isFull && itemSlot[i].itemName == itemName)
            {
                itemSlot[i].quantity += quantity;
                itemSlot[i].UpdateUI();
                itemAdded = true;
                break;
            }
        }

        // Add to empty slot if not updated
        if (!itemAdded)
        {
            for (int i = 0; i < itemSlot.Length; i++)
            {
                if (!itemSlot[i].isFull)
                {
                    itemSlot[i].AddItem(itemName, quantity, itemSprite, itemDescription);
                    itemSlot[i].UpdateUI();
                    break;
                }
            }
        }
    }

    public void DeselectAllSlots()
    {
        for (int i = 0; i < itemSlot.Length; i++)
        {
            itemSlot[i].selectedShader.SetActive(false);
            itemSlot[i].thisItemSelected = false;
        }
    }


/*
        // Check if item already exists in inventory
        for (int i = 0; i < itemSlot.Length; i++)
        {
            if (itemSlot[i].isFull && itemSlot[i].itemName == itemName)
            {
                itemSlot[i].quantity += quantity;
                itemSlot[i].UpdateUI();
                return;
            }
        }

        // Add to empty slot
        for (int i = 0; i < itemSlot.Length; i++)
        {
            if (!itemSlot[i].isFull)
            {
                itemSlot[i].AddItem(itemName, quantity, itemSprite, itemDescription);
                return;
            }
        }
        */
    
/*
    public void DeselectAllSlots()
    {
        foreach (var slot in itemSlot)
        {
            slot.selectedShader.SetActive(false);
            slot.thisItemSelected = false;
        }
    }
    */
}