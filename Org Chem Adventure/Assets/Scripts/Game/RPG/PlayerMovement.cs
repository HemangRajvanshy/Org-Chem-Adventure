﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {
   
    #region Member Variables
    /// <summary>
    /// Player movement speed
    /// </summary>
    private float movementSpeed = 50.0f;

    /// <summary>
    /// Animation state machine local reference
    /// </summary>
    private Animator animator;

    /// <summary>
    /// The last position of the player in previous frame
    /// </summary>
    private Vector3 lastPosition;

    /// <summary>
    /// The last checkpoint position that we have saved
    /// </summary>
    private Vector3 CheckPointPosition;
    #endregion

    void Start()
    {
        // get the local reference
        animator = GetComponent<Animator>();

        // set initial position
        lastPosition = transform.position;
        CheckPointPosition = transform.position;
    }

    void Update()
    {

        // get the input this frame
        float vertical = Input.GetAxis("Vertical");
        float horizontal = Input.GetAxis("Horizontal");

        // if there is no input then stop the animation
        if ((vertical == 0.0f) && (horizontal == 0.0f))
        {
            AnimatorStateInfo currentState = animator.GetCurrentAnimatorStateInfo(0);
            int stateName = currentState.fullPathHash;

            animator.Play(stateName, 0, 0.0f);
            animator.speed = 0.0f;
        }

        // reset the velocity each frame
        GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);

        // horizontal movement, left or right, set animation type and speed 
        if (vertical > 0)
        {
            //transform.Translate(0, movementSpeed * 0.9f * Time.deltaTime, 0);
            GetComponent<Rigidbody2D>().velocity = new Vector2(GetComponent<Rigidbody2D>().velocity.x, movementSpeed * Time.deltaTime);
            animator.SetInteger("Direction", 0);
            animator.speed = 1f;
        }
        else if (vertical < 0)
        {
            //transform.Translate(0, -movementSpeed *  0.9f * Time.deltaTime, 0);
            GetComponent<Rigidbody2D>().velocity = new Vector2(GetComponent<Rigidbody2D>().velocity.x, -movementSpeed * Time.deltaTime);
            animator.SetInteger("Direction", 2);
            animator.speed = 1f;
        }
        else if (horizontal > 0)
        {
            GetComponent<Rigidbody2D>().velocity = new Vector2(movementSpeed * Time.deltaTime, 0);
            animator.SetInteger("Direction", 1);
            animator.speed = 1.5f;
        }
        else if (horizontal < 0)
        {
            GetComponent<Rigidbody2D>().velocity = new Vector2(-movementSpeed * Time.deltaTime, 0);
            animator.SetInteger("Direction", 3);
            animator.speed = 1.5f;
        }

        // vertical movement, up or down, set animation type and speed 


        //compare this position to the last known one, are we moving?
        if (this.transform.position == lastPosition)
        {
            // we aren't moving so make sure we dont animate
            animator.speed = 0.0f;
        }

        // get the last known position
        lastPosition = transform.position;
    }
    

}
