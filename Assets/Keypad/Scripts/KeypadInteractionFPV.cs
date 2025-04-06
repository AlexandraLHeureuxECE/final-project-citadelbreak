using UnityEngine;

namespace NavKeypad
{
    public class KeypadInteractionFPV : MonoBehaviour
    {
        private Camera cam;

        [Header("Optional: Restrict to specific layer(s)")]
        [SerializeField] private LayerMask interactLayerMask = ~0; // All layers by default

        private void Awake()
        {
            cam = Camera.main;
            if (cam == null)
            {
                Debug.LogError("No camera tagged as 'MainCamera' found. Keypad interaction won't work.");
            }
        }

        private void Update()
        {
            if (cam == null) return;

            Ray ray = cam.ScreenPointToRay(Input.mousePosition);

            if (Input.GetMouseButtonDown(0))
            {
                if (Physics.Raycast(ray, out RaycastHit hit, 100f, interactLayerMask))
                {
                    Debug.Log("Raycast hit: " + hit.collider.gameObject.name);

                    if (hit.collider.TryGetComponent(out KeypadButton keypadButton))
                    {
                        Debug.Log("Keypad button pressed: " + keypadButton.name);
                        keypadButton.PressButton();
                    }
                }
                else
                {
                    Debug.Log("Raycast missed.");
                }
            }
        }
    }
}