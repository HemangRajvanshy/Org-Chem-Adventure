﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class AvatarManager : MonoBehaviour {

    public Image Avatar;
    public Sprite Neutral;
    public Sprite Happy;
    public Sprite Confused;


    public void Appear()
    {
        gameObject.SetActive(true);
    }

    public void Disappear()
    {
        gameObject.SetActive(false);
    }

    public void UpdateExpression(Story story)
    {
        InkList exp = (InkList)story.variablesState["Expression"];
        string val = exp.ToString();
        if (val == "neutral")
            Avatar.sprite = Neutral;
        else if (val == "happy")
            Avatar.sprite = Happy;
        else
        {
            Debug.Log(val + " Expression not found");
        }
    }
}