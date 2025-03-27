using System;
using Unity.VisualScripting;
using UnityEngine;

public class EnemyChaser3D : MonoBehaviour
{
    private static readonly int Attack = Animator.StringToHash("Attack");
    private static readonly int IsWalking = Animator.StringToHash("IsWalking");
    private static readonly int Die = Animator.StringToHash("Die");
    public float moveSpeed = 1f;
    public float rotationSpeed = 5f;
    public float chaseRange = 20f;

    private Transform player;
    private Rigidbody rb;
    public string attackTrigger = "Attack";
    public float attackRange = 7f;
    public float attackCooldown = 1.5f;
    private float lastAttack;
    public Animator animator;
    public float health = 100f;
    public float damage = 50f;
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
        rb = GetComponent<Rigidbody>();
        rb.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationZ;
        animator = GetComponent<Animator>();
        if (animator == null)
            animator = GetComponentInChildren<Animator>();
    }

    private void Update()
    {
        HandleMovement();
        CheckHealth();
    }

    void CheckHealth()
    {
        if (health <= 0)
        {
            animator.SetTrigger(Die);
            Invoke(nameof(PerformAction), 2f);
        }
    }

    void PerformAction()
    {
        Destroy(gameObject);
    }
    
    void HandleMovement()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);
        if (distanceToPlayer < attackRange && Time.time >= lastAttack + attackCooldown)
        {
            //attack code here
          //  this.rb.position = Vector3.MoveTowards(this.rb.position, player.position, moveSpeed * Time.deltaTime);
          
            animator.SetTrigger(Attack);
            animator.SetBool(IsWalking, false);
            rb.AddForce(transform.forward * 10);
            lastAttack = Time.time;
            health = health - damage;
        }
        
        
        if (distanceToPlayer < chaseRange && distanceToPlayer >attackRange)
        {
            // Calculate direction to player
            animator.SetBool(IsWalking, true);
            Vector3 direction = -(player.position - transform.position).normalized;
            direction.y = 0;

            // Rotate towards player smoothly
            Quaternion lookRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(
                transform.rotation,
                lookRotation,
                rotationSpeed * Time.deltaTime
            );

            // Move forward
            if (transform.position.y <= player.position.y && rb.linearVelocity.magnitude < moveSpeed)
            {
                rb.AddForce(transform.forward * -moveSpeed);
            }
       
                else
                {
                    animator.SetBool(IsWalking, false);
                    // Stop moving when player is out of range
                }
        }
    }
}