﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ContentManager : MonoBehaviour {

    public VerticalLayoutGroup layoutGroup;
    public ScrollRect scroll;

    private float lastLayoutGroupSize=0f;
    [SerializeField]
    private float offset = 50;

    void Start()
    {
        Debug.Log("Control the deletion and addition of content blocks from here."); 
    }

    private void LateUpdate()
    {
        UpdateAutoScroll();
    }

    void UpdateAutoScroll()
    {
        float newLayoutGroupSize = ((RectTransform)layoutGroup.transform).sizeDelta.y;
        if (newLayoutGroupSize > lastLayoutGroupSize)
        {
            var rect = (RectTransform)transform;
            rect.sizeDelta = new Vector2(rect.sizeDelta.x, newLayoutGroupSize);
            lastLayoutGroupSize = newLayoutGroupSize;
            ScrollToBottom();
        }
    }

    public void ScrollToBottom()
    {
        ((RectTransform)transform).sizeDelta = new Vector2(0, layoutGroup.GetComponent<RectTransform>().sizeDelta.y - offset) ;
        scroll.normalizedPosition = new Vector2(0, 0);
    }
}
