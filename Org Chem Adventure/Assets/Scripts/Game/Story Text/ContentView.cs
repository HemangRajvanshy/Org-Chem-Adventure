﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
/*
public class ContentView : MonoBehaviour {

    public TextSetter setter;
    public Text text;

    public float speed = 1.0f;

    void Awake()
    {
        setter = new TextSetter();
        setter.speedMultiplier = 1/speed;
    }

    private void Update()
    {
        if(setter.typing)
        {
            setter.Loop();
            text.text = setter.text;
        }
    }

    public void LayoutText(string content)
    {
        setter.TypeText(content);
        text = GetComponent<Text>();
    }
} */

public class ContentView : MonoBehaviour
{

    public TextSetter setter;
    public Text text;
    private string mytext;
    public float speed = 1.0f;

    protected virtual void Awake()
    {
        setter = GetComponent<TextSetter>();
        if(setter != null)
            setter.SecondsBetweenCharacters = 1 / speed;
    }

    protected virtual void Update()
    {
        if(setter.typing)
        {
            text.text = setter.text;
            if (Input.GetMouseButtonDown(0) && GameManager.Instance.paused == false)
            {
                setter.FinishTyping(mytext);
                //text.text = setter.text;
            }
        }
        if (!setter.typing)
            Destroy(gameObject.GetComponent<ContentView>());
    }

    public void LayoutText(string content)
    {
        mytext = content;
        text = GetComponent<Text>();
        setter.Type(content);
    }
}