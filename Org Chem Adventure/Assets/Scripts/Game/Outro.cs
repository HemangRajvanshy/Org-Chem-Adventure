using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Outro : MonoBehaviour {

    public GameObject OutroObj;
    public GameObject FacebookThing;

    public void ShowOutro()
    {
        StartCoroutine(DoOutro());
    }

    IEnumerator DoOutro()
    {
        GameManager.Instance.game.standardView.CloseWithAnim();
        GameManager.Instance.game.avatar.Disappear();

        yield return new WaitForSeconds(0.4f);

        CanvasGroup group = OutroObj.GetComponent<CanvasGroup>();

        group.alpha = 0;
        OutroObj.SetActive(true);

        while (group.alpha < 1)
        {
            group.alpha += Time.deltaTime;
        }


        yield return new WaitForSeconds(3f);

        Debug.Log("Show rating popup");
        Debug.Log("Enable the facebook thing");
    }
}
