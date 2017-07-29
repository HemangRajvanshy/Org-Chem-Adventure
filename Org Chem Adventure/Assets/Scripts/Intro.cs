using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Intro : MonoBehaviour {

	public void PlayIntro()
    {
        StartCoroutine(DoIntro());
    }

    private IEnumerator DoIntro()
    {
        yield return new WaitForSeconds(2f);

        Debug.Log("DO INTRO");

        yield return new WaitForSeconds(2f);
        Debug.Log("DID INTRO");
        //Complete
        GameManager.Instance.IncrementProgress();
    }
}
