using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class ChoiceView : MonoBehaviour {

    public ChoiceGroupView choiceGroupView;
    public Choice choice;

    public RectTransform rectTransform
    {
        get
        {
            return (RectTransform)transform;
        }
    }
    public Text text
    {
        get
        {
            return GetComponent<Text>();
        }
    }
    public LayoutElement layoutElement
    {
        get
        {
            return GetComponent<LayoutElement>();
        }
    }
    public Button button
    {
        get
        {
            return GetComponent<Button>();
        }
    }
    public GraphicPulser pulser
    {
        get
        {
            return GetComponent<GraphicPulser>();
        }
    }

    private void Awake()
    {
        button.interactable = false;
        pulser.enabled = false;
    }

    public void LayoutText(Choice choice)
    {
        SetChoice(choice);
        text.color = new Color(text.color.r, text.color.g, text.color.b, 0);
        this.GetComponent<Text>().text = choice.text.Trim();
        // Canvas.ForceUpdateCanvases();

       /* TextGenerator generator = new TextGenerator();
        TextGenerationSettings settings = text.GetGenerationSettings(new Vector2(rectTransform.sizeDelta.x, 0));
        settings.updateBounds = true;
        settings.scaleFactor = 1;
        generator.Populate(choice.text.Trim(), settings);
        layoutElement.preferredHeight = generator.rectExtents.height;*/
    }

    public void SetChoice(Choice choice)
    {
        this.choice = choice;
    }

    virtual public void Render()
    {
        //text.text = content;
        //base.LayoutText(content);
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        text.color = new Color(text.color.r, text.color.g, text.color.b, 0);
        while (text.color.a < 1)
        {
            text.color = new Color(text.color.r, text.color.g, text.color.b, text.color.a + Time.deltaTime * 2);
            yield return new WaitForEndOfFrame();
        }
        pulser.enabled = true;
        button.interactable = true;
    }

    public void OnClick()
    {
        MakeChoice();
    }

    private void MakeChoice()
    {
        choiceGroupView.MakeChoice(choice);
    }

}
