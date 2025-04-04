using UnityEngine;

public class TrapController : MonoBehaviour
{
    public float moveSpeed = 3f; // Speed of movement
    public float moveDistance = 3f; // Distance to move
    public bool rotateBlade = true; // Enable rotation

    private Vector3 startPosition;
    private int direction = 1;

    void Start()
    {
        startPosition = transform.position;
    }

    void Update()
    {
        // Move left and right
        transform.position += Vector3.right * direction * moveSpeed * Time.deltaTime;

        // Reverse direction when reaching limits
        if (Vector3.Distance(startPosition, transform.position) >= moveDistance)
        {
            direction *= -1;
        }

        // Rotate the saw blade (optional)
        if (rotateBlade)
        {
            transform.Rotate(Vector3.forward * 360 * Time.deltaTime); // Adjust axis if needed
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player")) // Check if the object has the "Player" tag
        {
            Debug.Log("Player Hit by Saw Blade!");
            // Add player damage or respawn logic here
            PlayerManager.instance.KillPlayer();

        }
        if (other.CompareTag("Enemy")) // Check if the object has the "Player" tag
        {
          
            // Add player damage or respawn logic here
          Destroy(other.gameObject);

        }
    }
   
}