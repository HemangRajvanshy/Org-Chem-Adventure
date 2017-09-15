using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Standardview : MonoBehaviour {

    public CanvasGroup group;
    public Canvas choiceCanvas;

    public void CloseWithoutAnim()
    {
        group.alpha = 0;
        choiceCanvas.enabled = false;
    }

    public void CloseWithAnim()
    {
        this.GetComponent<Animator>().SetTrigger("Close");
        GetComponent<AudioSource>().Play();
        StartCoroutine(Close());
    }

    IEnumerator Close()
    {
        while (this.GetComponent<Animator>().GetAnimatorTransitionInfo(0).IsName("Open"))
            yield return new WaitForSeconds(0.1f);
        //choiceCanvas.enabled = false;
    }

    public void Open()
    {
        choiceCanvas.enabled = true;
        group.alpha = 1;
        this.GetComponent<Animator>().SetTrigger("Open");
        GetComponent<AudioSource>().Play();
    }

}
