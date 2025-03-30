using UnityEngine;

public class LoadCharacter : MonoBehaviour
{
    void Awake()
    {
        LoadCharacterAtStartup();
    }

    void LoadCharacterAtStartup()
    {
        int selectedCharacter = PlayerPrefs.GetInt("selectedCharacter", 0);
        GameObject player = GameObject.Find("Player");

        if (player == null)
        {
            Debug.LogError("No GameObject named 'Player' found.");
            return;
        }

        string[] characterNames = { "Male Character", "Female Character" };

        for (int i = 0; i < characterNames.Length; i++)
        {
            Transform child = player.transform.Find(characterNames[i]);
            if (child != null)
            {
                bool isActive = (i == selectedCharacter);
                child.gameObject.SetActive(isActive);
            }
        }
    }

}