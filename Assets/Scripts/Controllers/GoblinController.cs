using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class GoblinController : MonoBehaviour
{

    public float lookRadius = 10f;
    
    Transform target;
    NavMeshAgent agent;
    CharacterCombat combat;
        private static readonly int Attack = Animator.StringToHash("Attack");
        private static readonly int IsWalking = Animator.StringToHash("IsWalking");
        private static readonly int Die = Animator.StringToHash("Die");
        public Animator animator;
     
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        target = PlayerManager.instance.player.transform;
        agent = GetComponent<NavMeshAgent>();
        combat = GetComponent<CharacterCombat>();
         animator = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(target.position, transform.position);
        animator.SetBool(IsWalking, true);
        if (distance <= lookRadius)
        {
            agent.SetDestination(target.position);
       
Debug.Log("hello");

            if (distance <= agent.stoppingDistance)
            {
                // Attack the target
                
                animator.SetTrigger(Attack);
                animator.SetBool(IsWalking, false);
        
                
                CharacterStats targetStats = target.GetComponent<CharacterStats>();
                if (targetStats != null)
                {
                    combat.Attack(targetStats);
                }
                
                // Face the target
                FaceTarget();
            }
        }
    }

    void FaceTarget()
    {
        Vector3 direction = (target.position - transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, lookRadius);
    }
}
