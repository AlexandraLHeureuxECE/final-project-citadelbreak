using System.Collections.Generic;
using UnityEngine;
using TMPro;

[System.Serializable]
public class DialogueLine
{
    [TextArea(2, 5)]
    public string text;
}

public class NPCSystem : MonoBehaviour
{
    private Animator animator;

    private void Awake()
    {
        animator = GetComponentInParent<Animator>();
    }

    public GameObject dTemplate;
    public GameObject canvas;

    [SerializeField] private List<DialogueLine> customDialogue;

    public bool playerDetection = false;
    private List<GameObject> dialogueEntries = new List<GameObject>();
    private int currentDialogueIndex = 0;

    void Update()
    {
        if (playerDetection && Input.GetKeyDown(KeyCode.E) && !PlayerController.dialogue)
        {
            StartDialogue();
        }

        if (PlayerController.dialogue && (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0)))
        {
            ShowNextDialogue();
        }
    }

    void StartDialogue()
    {
        foreach (Transform child in canvas.transform)
        {
            if (child != dTemplate.transform)
                Destroy(child.gameObject);
        }

        dialogueEntries.Clear();
        currentDialogueIndex = 0;

        canvas.SetActive(true);
        PlayerController.dialogue = true;

        // Start looping talking animation
        if (animator != null)
            animator.SetBool("IsTalking", true);

        foreach (DialogueLine line in customDialogue)
        {
            AddDialogue(line.text);
        }

        if (dialogueEntries.Count > 0)
        {
            dialogueEntries[0].SetActive(true);
        }
    }

    void AddDialogue(string text)
    {
        GameObject clone = Instantiate(dTemplate, canvas.transform);
        clone.SetActive(false);
        TextMeshProUGUI textUI = clone.GetComponentInChildren<TextMeshProUGUI>();
        if (textUI != null)
        {
            textUI.text = text;
        }
        dialogueEntries.Add(clone);
    }

    void ShowNextDialogue()
    {
        if (currentDialogueIndex < dialogueEntries.Count)
        {
            dialogueEntries[currentDialogueIndex].SetActive(false);
            currentDialogueIndex++;

            if (currentDialogueIndex < dialogueEntries.Count)
            {
                dialogueEntries[currentDialogueIndex].SetActive(true);
            }
            else
            {
                PlayerController.dialogue = false;
                canvas.SetActive(false);

                // Stop talking animation
                if (animator != null)
                    animator.SetBool("IsTalking", false);
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Player")
            playerDetection = true;
    }

    private void OnTriggerExit(Collider other)
    {
        playerDetection = false;
    }
    
    
}
