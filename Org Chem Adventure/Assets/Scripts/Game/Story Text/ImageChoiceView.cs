using System.Collections;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageChoiceView : ChoiceView {

    private Image image;

	public void SetImage(string cont)
    {
        int n1 = Convert.ToInt32(cont[0] + "") - 1;
        int n2 = Convert.ToInt32(cont[2] + "") - 1;
        Sprite img = choiceGroupView.Manager.ImageDB[n1].myList[n2];
        image = gameObject.GetComponent<Image>();
        image.sprite = img;
        image.color = new Color(image.color.r, image.color.g, image.color.b, 0);
    }

    override public void Render()
    {
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        while (image.color.a < 1)
        {
            image.color = new Color(image.color.r, image.color.g, image.color.b, image.color.a + Time.deltaTime * 2);
            yield return new WaitForEndOfFrame();
        }
        pulser.enabled = true;
        button.interactable = true;
    }
}
