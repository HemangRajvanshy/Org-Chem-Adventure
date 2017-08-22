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

    private void Awake()
    {
        button.interactable = false;
    }

    public void LayoutText(Choice choice)
    {
        SetChoice(choice);
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

    public void Render()
    {
        //text.text = content;
        //base.LayoutText(content);
        //StartCoroutine(FadeIn(2f));
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
