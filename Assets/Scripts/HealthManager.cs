using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterStats))]
public class HealthManager : MonoBehaviour
{
    public Slider healthSlider;
    public Slider easeHealthSlider;
    public float lerpSpeed = 0.05f;

    private CharacterStats stats;

    void Start()
    {
        stats = GetComponent<CharacterStats>();

        healthSlider.maxValue = stats.maxHealth;
        easeHealthSlider.maxValue = stats.maxHealth;

        healthSlider.value = stats.currentHealth;
        easeHealthSlider.value = stats.currentHealth;

        stats.OnHealthChanged += OnHealthChanged;
    }

    void Update()
    {
        if (easeHealthSlider.value != healthSlider.value)
        {
            easeHealthSlider.value = Mathf.Lerp(easeHealthSlider.value, healthSlider.value, lerpSpeed);
        }
    }

    private void OnHealthChanged(int max, int current)
    {
        healthSlider.maxValue = max;
        easeHealthSlider.maxValue = max;

        healthSlider.value = current;
    }
}