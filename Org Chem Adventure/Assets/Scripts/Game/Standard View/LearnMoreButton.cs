using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LearnMoreButton : MonoBehaviour {

    public CanvasGroup group;

    private string address;

    void Start()
    {
        group.alpha = 0;
    }

    public void Show(string url)
    {
        address = url;
        StartCoroutine(FadeIn());
    }

    public void Hide()
    {
        StartCoroutine(FadeOut());
    }

    public void OnClick()
    {
        Application.OpenURL(address);
    }

    IEnumerator FadeIn()
    {
        while (group.alpha != 1)
        {
            group.alpha += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
    }

    IEnumerator FadeOut()
    {
        while (group.alpha != 0)
        {
            group.alpha -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
    }
}
