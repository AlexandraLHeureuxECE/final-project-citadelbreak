using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;

[RequireComponent(typeof(PlayerMotor))]
public class StaminaManager : MonoBehaviour
{
    public Slider staminaSlider;
    public Slider easeStaminaSlider;

    public float maxStamina = 100f;
    public float stamina;

    public float staminaDrainRate = 10f;
    public float staminaRegenRate = 5f;
    public float lerpSpeed = 0.05f;

    private PlayerMotor motor;
    private NavMeshAgent agent;
    private Animator animator;

    void Start()
    {
        stamina = maxStamina;
        motor = GetComponent<PlayerMotor>();
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponentInChildren<Animator>(); // Gets Animator from child if needed
    }

    void Update()
    {
        bool shiftHeld = Input.GetKey(KeyCode.LeftShift);
        bool isMoving = agent.velocity.magnitude > 0.1f;

        if (shiftHeld && isMoving && stamina > 0f)
        {
            consumeStamina();
            motor.isSprinting = true;
        }
        else
        {
            regenerateStamina();
            motor.isSprinting = false;
        }

        if (stamina <= 0f)
        {
            motor.isSprinting = false;
        }

        // 🔥 Update Animator sprint state
        if (animator != null)
            animator.SetBool("isSprinting", motor.isSprinting);

        // UI updates
        staminaSlider.value = stamina;
        easeStaminaSlider.value = Mathf.Lerp(easeStaminaSlider.value, stamina, lerpSpeed);
    }

    void consumeStamina()
    {
        stamina -= staminaDrainRate * Time.deltaTime;
        stamina = Mathf.Clamp(stamina, 0, maxStamina);
    }

    void regenerateStamina()
    {
        stamina += staminaRegenRate * Time.deltaTime;
        stamina = Mathf.Clamp(stamina, 0, maxStamina);
    }
}