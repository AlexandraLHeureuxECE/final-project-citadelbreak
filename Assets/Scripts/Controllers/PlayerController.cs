using UnityEngine.EventSystems;
using UnityEngine;

[RequireComponent(typeof(PlayerMotor))]
public class PlayerController : MonoBehaviour
{
    public Interactable focus;
    
    public LayerMask movementMask;
    static public bool dialogue = false;
    
    private Camera cam;
    PlayerMotor motor;
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        cam = Camera.main;
        motor = GetComponent<PlayerMotor>();
    }

    // Update is called once per frame
    void Update()
    {
        if(EventSystem.current.IsPointerOverGameObject())
            return;
        
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = cam.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100, movementMask))
            {
                // Move our player to what we hit
                if (!dialogue)
                {
                    motor.MoveToPoint(hit.point);
                }
                
                // Stop focusing any objects
                RemoveFocus();
            }
        }
        
        if (Input.GetMouseButtonDown(1) || Input.GetKeyDown(KeyCode.E))
        {
            Ray ray = cam.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            if (Physics.Raycast(ray, out hit, 100))
            {
                // Check if we hit an interactable
                Interactable interactable = hit.collider.GetComponent<Interactable>();
                // If we did set it as our focus
                if (interactable != null)
                {
                    SetFocus(interactable);
                }
            }
        }
    }

    void SetFocus(Interactable newFocus)
    {
        if (newFocus != focus)
        {
            if (focus != null) 
                focus.OnDefocused();
            
            focus = newFocus;
            motor.FollowTarget(newFocus);
        }
        
        newFocus.OnFocused(transform);
    }

    void RemoveFocus()
    {
        if (focus != null) 
            focus.OnDefocused();
        
        focus = null;
        motor.StopFollowingTarget();
    }
}
