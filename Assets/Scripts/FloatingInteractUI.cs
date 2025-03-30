using UnityEngine;
using UnityEngine.UI;

public class FloatingInteractUI : MonoBehaviour
{
    public GameObject uiPrefab;
    public Transform target;

    private Transform ui;
    private Transform cam;
    private NPCSystem npcSystem;

    void Start()
    {
        cam = Camera.main.transform;

        foreach (Canvas c in FindObjectsOfType<Canvas>())
        {
            if (c.renderMode == RenderMode.WorldSpace)
            {
                ui = Instantiate(uiPrefab, c.transform).transform;
                ui.gameObject.SetActive(false); // Start hidden
                break;
            }
        }

        npcSystem = GetComponent<NPCSystem>();
    }

    void LateUpdate()
    {
        if (ui == null || target == null || npcSystem == null)
            return;

        ui.position = target.position;
        ui.forward = -cam.forward;

        // Simple visibility toggle
        ui.gameObject.SetActive(npcSystem.playerDetection);
    }
}