using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class ImageScene : MonoBehaviour
{
    public float time = 0.3f;
    public float transistionwait = 1f;
    //Fade in fade-out methods
    public void Appear()
    {
        this.GetComponent<Image>().enabled = true;
    }

    public void Disappear()
    {
        this.GetComponent<Image>().enabled = false;
    }

    public void Set()
    {
        this.GetComponent<Image>().enabled = true;
    }
}
