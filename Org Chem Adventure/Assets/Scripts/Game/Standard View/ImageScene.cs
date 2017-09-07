using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class ImageScene : MonoBehaviour
{
    public float time = 0.3f;
    public float transistionwait = 1f;

    private bool running = false;
    //Fade in fade-out methods
    public void Appear()
    {
        this.GetComponent<Image>().enabled = true;
    }

    public void Disappear()
    {
        this.GetComponent<Image>().enabled = false;
    }

    public void Set(ImageScene disap = null)
    {
        if(!running)
        {
            this.GetComponent<Image>().enabled = true;
            StartCoroutine(FadeIn(disap));
        }
    }

    IEnumerator FadeIn(ImageScene disap)
    {
        running = true;
        Image image = this.GetComponent<Image>();
        image.color = new Color(image.color.r, image.color.g, image.color.b ,0);
        while (image.color.a < 1)
        {
            image.color = new Color(image.color.r, image.color.g, image.color.b, image.color.a + Time.deltaTime*(1/time));
            yield return new WaitForEndOfFrame();
        }

        if (disap != null)
        {
            disap.Disappear();
        }
        running = false;
    }
}
