using System.Collections;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageChoiceView : ChoiceView {

	public void SetImage(string cont)
    {
        int n1 = Convert.ToInt32(cont[0] + "") - 1;
        int n2 = Convert.ToInt32(cont[2] + "") - 1;
        Sprite img = choiceGroupView.Manager.ImageDB[n1].myList[n2];
        gameObject.GetComponent<Image>().sprite = img;
    }
}
