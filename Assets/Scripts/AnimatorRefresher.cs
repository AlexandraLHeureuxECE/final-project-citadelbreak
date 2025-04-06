using UnityEngine;

public class AnimatorRefresher : MonoBehaviour
{
    [Tooltip("Reference to the top-level Player object that contains both Male and Female characters.")]
    public Transform characterRoot;

    private Transform currentCharacter;
    private Transform currentModel;

    private CharacterAnimator characterAnimator;

    void Start()
    {
        characterAnimator = GetComponent<CharacterAnimator>();
        RefreshAnimator(); // Initial setup
    }

    void Update()
    {
        Transform activeCharacter = GetActiveChild(characterRoot);
        if (activeCharacter == null)
            return;

        if (activeCharacter != currentCharacter)
        {
            currentCharacter = activeCharacter;
            currentModel = null; // Reset model so it updates on next check
            Debug.Log("Character changed: " + activeCharacter.name);
        }

        Transform activeModel = GetActiveChild(currentCharacter);

        if (activeModel != currentModel)
        {
            Debug.Log("Model change detected under: " + currentCharacter.name);
            currentModel = activeModel;
            RefreshAnimator();
        }
    }

    void RefreshAnimator()
    {
        if (currentModel == null || characterAnimator == null) return;

        Animator newAnimator = currentModel.GetComponentInChildren<Animator>();
        if (newAnimator != null)
        {
            characterAnimator.SetAnimator(newAnimator);
            Debug.Log("Animator assigned: " + newAnimator.name);
        }
        else
        {
            Debug.LogWarning("No Animator found on current model.");
        }
    }

    Transform GetActiveChild(Transform parent)
    {
        foreach (Transform child in parent)
        {
            if (child.gameObject.activeInHierarchy)
                return child;
        }
        return null;
    }
}