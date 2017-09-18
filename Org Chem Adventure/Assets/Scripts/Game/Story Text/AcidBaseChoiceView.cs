using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;
using Ink.Runtime;

public class AcidBaseChoiceView : MonoBehaviour {

    public ChoiceGroupView choiceGV;

    private Choice choice1;
    private Choice choice2;

    public GameObject Left;
    public GameObject Right;

    private void Awake()
    {
        RectTransform rectt = GetComponent<RectTransform>();
        rectt.offsetMin = new Vector2(-278, 0);
        rectt.offsetMax = new Vector2(0, 66);
    }

    public void Setup(IList<Choice> choices)
    {
        Image img1 = Left.GetComponent<Image>();
        Image img2 = Right.GetComponent<Image>();

        choice1 = choices[0];
        choice2 = choices[1];

        SetImage(choice1.text.Trim().Substring(9, 2), img1);
        SetImage(choice2.text.Trim().Substring(9, 2), img2);

        StartCoroutine(FadeIn(img1));
        StartCoroutine(FadeIn(img2));
    }

    public void SetImage(string cont, Image image)
    {
        int n1 = Convert.ToInt32(cont[0] + "") - 1;
        int n2 = Convert.ToInt32(cont[1] + "") - 1;
        Sprite img = choiceGV.Manager.ImageDB[n1].myList[n2];
        image.sprite = img;
        image.color = new Color(image.color.r, image.color.g, image.color.b, 0);
    }


    IEnumerator FadeIn(Image image)
    {
        yield return new WaitForSeconds(0.5f);
        while (image.color.a < 1)
        {
            image.color = new Color(image.color.r, image.color.g, image.color.b, image.color.a + Time.deltaTime * 2);
            yield return new WaitForEndOfFrame();
        }
        //pulser.enabled = true;
        //button.interactable = true;
    }

    public void ChooseLeft()
    {
        GameManager.Instance.game.ChooseChoiceIndex(choice1.index);
        StartCoroutine(FadeOutAndContinue());
    }

    public void ChooseRight()
    {
        GameManager.Instance.game.ChooseChoiceIndex(choice2.index);
        StartCoroutine(FadeOutAndContinue());
    }

    IEnumerator FadeOutAndContinue()
    {
        yield return new WaitForSeconds(0.25f);
        CanvasGroup group = GetComponent<CanvasGroup>();
        while (group.alpha > 0)
        {
            group.alpha -= Time.deltaTime * 2;
            yield return new WaitForEndOfFrame();
        }

        Destroy(choiceGV.gameObject);
        yield return new WaitForSeconds(0.1f);
        Destroy(gameObject);
    }
}
