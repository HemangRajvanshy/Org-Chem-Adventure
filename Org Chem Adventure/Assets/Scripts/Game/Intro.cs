using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Intro : MonoBehaviour {

    public Animator anim;
    public CanvasGroup group;
    public float wait = 2.0f;

	public void PlayIntro()
    {
        StartCoroutine(DoIntro());
    }

    private IEnumerator DoIntro()
    {
        yield return new WaitForEndOfFrame();
        group.gameObject.SetActive(true);

        yield return new WaitForSeconds(wait);

        //Complete
        anim.SetTrigger("GoOut");
        //yield return new WaitForSeconds(wait);
        while (anim.GetAnimatorTransitionInfo(0).IsName("GoOut"))
            yield return new WaitForSeconds(0.1f);
        GameManager.Instance.IncrementProgress();
        //GameManager.Instance.game.StartGame(); //intro over, game start
        group.gameObject.SetActive(false); 
    }
}
