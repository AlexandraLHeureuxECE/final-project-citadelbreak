using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class CharacterAnimator : MonoBehaviour
{
    public AnimationClip replaceableAttackAnim;
    public AnimationClip[] defaultAttackAnimSet;
    protected AnimationClip[] currentAttackAnimSet;
    
    const float locomotionAnimationSmoothTime = .1f;
    
    NavMeshAgent agent;
    protected Animator animator;
    protected CharacterCombat combat;
    // public AnimatorOverrideController overrideController;
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    protected virtual void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponentInChildren<Animator>();
        combat = GetComponent<CharacterCombat>();

        // if (overrideController == null)
        // {
        //     overrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        // }
        // animator.runtimeAnimatorController = overrideController;

        currentAttackAnimSet = defaultAttackAnimSet;
        combat.OnAttack += OnAttack;
    }

    // Update is called once per frame
    protected virtual void Update()
    {
        float speedPercent = agent.velocity.magnitude / agent.speed;
        animator.SetFloat("speedPercent", speedPercent, locomotionAnimationSmoothTime, Time.deltaTime);
        
        animator.SetBool("inCombat", combat.InCombat);
    }

    protected virtual void OnAttack()
    {
        animator.SetTrigger("attack");
        int attackIndex = Random.Range(0, currentAttackAnimSet.Length);
        // overrideController[replaceableAttackAnim.name] = currentAttackAnimSet[attackIndex];
    }
    
    public void SetAnimator(Animator newAnimator)
    {
        animator = newAnimator;

        if (combat != null)
        {
            combat.OnAttack -= OnAttack; // Unsubscribe just in case
            combat.OnAttack += OnAttack;
        }

        Debug.Log("Animator updated to: " + animator.name);
    }

}
