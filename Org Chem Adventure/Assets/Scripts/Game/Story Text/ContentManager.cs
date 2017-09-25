using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ContentManager : MonoBehaviour {

    public CanvasGroup canvasGroup;
    public VerticalLayoutGroup layoutGroup;
    public ScrollRect scroll;
    [SerializeField]
    public List<Sprite> ImageDB;
    public List<string> URLDB;

    private GameObject ContentContainer;
    private float lastLayoutGroupSize = 0f;
    [SerializeField]
    private float offset = 50;

    void Start()
    {
        ContentContainer = layoutGroup.gameObject;
    }

    public void NewWindow()
    {
        StartCoroutine(FadeAndClear());
    }

    private IEnumerator FadeAndClear()
    {
        //Fade Out
        while(canvasGroup.alpha != 0)
        {
            canvasGroup.alpha -= Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        foreach (Transform child in ContentContainer.transform)
        {
            GameObject.Destroy(child.gameObject);
        }

        //Come Back on
        canvasGroup.alpha = 1;

        yield return null;
    }

    private void LateUpdate()
    {
        UpdateAutoScroll();
    }

    void UpdateAutoScroll()
    {
        float newLayoutGroupSize = ((RectTransform)layoutGroup.transform).sizeDelta.y;
        if (newLayoutGroupSize != lastLayoutGroupSize)
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