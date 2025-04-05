using UnityEngine;

public class ObjectMonitor : MonoBehaviour
{
    public GameObject objectToMonitor;  // The GameObject to monitor for destruction
    public GameObject objectToDestroy;  // The GameObject to destroy when the monitored object is destroyed

    void Update()
    {
        // Check if the object to monitor has been destroyed
        if (objectToMonitor == null)
        {
            // If the monitored object is destroyed, check if object to destroy is not null
            if (objectToDestroy != null)
            {
                Destroy(objectToDestroy);  // Destroy the designated GameObject
            }
            else
            {
                Debug.LogError("The object to destroy is already null or missing.");
            }
        }
    }
}