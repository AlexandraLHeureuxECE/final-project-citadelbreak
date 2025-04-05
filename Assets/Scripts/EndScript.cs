using UnityEngine;
using UnityEngine.SceneManagement;

public class EndScript : MonoBehaviour
{
    public GameObject targetObject;  // The GameObject to monitor for deletion
    public GameObject canvasGameObject;  // The canvas to show on deletion
    private bool isObjectDeleted = false;

    void Update()
    {
        if (targetObject == null && !isObjectDeleted)
        {
            // Object has been deleted, show canvas and start timer
            canvasGameObject.SetActive(true);
            isObjectDeleted = true;
            Invoke("LoadStartScene", 10);  // Wait 10 seconds then load scene
        }
    }

    void LoadStartScene()
    {
        SceneManager.LoadScene(0);
    }
}