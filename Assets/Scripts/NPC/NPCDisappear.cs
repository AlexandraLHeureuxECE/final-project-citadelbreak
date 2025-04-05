using UnityEngine;

public class NPCDisappear : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    
    public void Disappear()
        {
            // Hide the Renderer (Recommended for performance)
            GetComponent<Renderer>().enabled = false;
 
        }
    
        public void Appear()
        {
            // Re-enable the Renderer
            GetComponent<Renderer>().enabled = true;
    
        }
    
}
