using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Intro : MonoBehaviour {

    public Animator anim;
    public CanvasGroup group;
    public float wait = 2.0f;

    public GameObject CloseButton;

    public void PlayIntro()
    {
        anim.speed = 1.0f;
        CloseButton.SetActive(false);
        StartCoroutine(DoIntro());
    }

    public void ShowCredits()
    {
        CloseButton.SetActive(true);
        group.alpha = 1;
        anim.SetTrigger("GoIn");
        group.gameObject.SetActive(true);
    }

    public void HideCredits()
    {
        StartCoroutine(FadeOut());
    }

    private IEnumerator FadeOut()
    {
        anim.SetTrigger("GoOut");
        //yield return new WaitForSeconds(wait);

        //Debug.Log(anim.GetCurrentAnimatorStateInfo(0).IsName("Idle"));
        anim.speed = 1.5f;
        while (anim.GetCurrentAnimatorStateInfo(0).IsName("Idle"))
        {
            //Debug.Log("Fading");
            yield return new WaitForSeconds(0.1f);
        }

        group.gameObject.SetActive(false);
    }

    private IEnumerator DoIntro()
    {
        yield return new WaitForEndOfFrame();
        group.gameObject.SetActive(true);

        yield return new WaitForSeconds(wait);

        //Complete
        anim.SetTrigger("GoOut");
        //yield return new WaitForSeconds(wait);

        //Debug.Log(anim.GetCurrentAnimatorStateInfo(0).IsName("Idle"));
        while (anim.GetCurrentAnimatorStateInfo(0).IsName("Idle"))
        {
            //Debug.Log("Fading");
            yield return new WaitForSeconds(0.1f);
        }
        yield return new WaitForSeconds(0.3f);

        GameManager.Instance.IncrementProgress();
        //GameManager.Instance.game.StartGame(); //intro over, game start
        group.gameObject.SetActive(false); 
    }
}