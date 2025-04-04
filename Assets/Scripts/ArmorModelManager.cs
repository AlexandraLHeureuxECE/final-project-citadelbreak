using UnityEngine;

public class ArmorModelManager : MonoBehaviour
{
    public static ArmorModelManager instance;

    void Awake()
    {
        instance = this;
    }

    public void ActivateArmorSet(string setName)
    {
        foreach (Transform child in transform)
        {
            bool match = child.name.Contains(setName);
            child.gameObject.SetActive(match);
        }

        Debug.Log("Activated model: " + setName);
    }
}