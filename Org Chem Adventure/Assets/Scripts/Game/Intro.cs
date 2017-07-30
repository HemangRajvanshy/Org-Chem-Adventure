using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Intro : MonoBehaviour {

    public CanvasGroup group;

	public void PlayIntro()
    {
        StartCoroutine(DoIntro());
    }

    private IEnumerator DoIntro()
    {
        yield return new WaitForEndOfFrame();
        group.gameObject.SetActive(true);

        yield return new WaitForSeconds(2f);

        Debug.Log("DO INTRO");

        yield return new WaitForSeconds(2f);
        Debug.Log("DID INTRO");
        //Complete
        GameManager.Instance.IncrementProgress();

        group.gameObject.SetActive(false); 
    }
}
