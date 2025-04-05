using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterStats))]
public class ManaManager : MonoBehaviour
{
    public Slider manaSlider;
    public Slider easeManaSlider;

    public int maxMana = 100;
    public float mana;
    private float lerpSpeed = 0.05f;

    private CharacterStats stats;

    void Start()
    {
        mana = maxMana;
        stats = GetComponent<CharacterStats>();

        if (stats == null)
            Debug.LogError("❌ CharacterStats missing on ManaManager object.");
    }

    void Update()
    {
        // Press M to convert mana to health
        if (Input.GetKeyDown(KeyCode.M))
        {
            ConvertManaToHealth();
        }

        // UI sync
        manaSlider.value = mana;
        easeManaSlider.value = Mathf.Lerp(easeManaSlider.value, mana, lerpSpeed);
    }

    void useMana(float amount)
    {
        mana -= amount;
        mana = Mathf.Clamp(mana, 0, maxMana);
    }

    void ConvertManaToHealth()
    {
        if (stats == null || mana <= 0 || stats.currentHealth >= stats.maxHealth)
            return;

        // Calculate how much we can heal
        int neededHealth = stats.maxHealth - stats.currentHealth;
        int transferableAmount = Mathf.Min(neededHealth, Mathf.FloorToInt(mana));

        if (transferableAmount <= 0) return;

        // Heal and consume mana
        stats.Heal(transferableAmount);
        useMana(transferableAmount);
    }

}