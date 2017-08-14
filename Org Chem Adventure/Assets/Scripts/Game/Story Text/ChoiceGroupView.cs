using System.Collections;
using Ink.Runtime;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceGroupView : MonoBehaviour {

    public List<ChoiceView> choiceViews;
    public ChoiceView choiceViewPrefab;

    public VerticalLayoutGroup verticalLayoutGroup
    {
        get
        {
            return GetComponent<VerticalLayoutGroup>();
        }
    }
    public ContentSizeFitter contentSizeFitter
    {
        get
        {
            return GetComponent<ContentSizeFitter>();
        }
    }

    public void LayoutChoices(IList<Choice> choices)
    {
        foreach (Choice choice in choices)
        {
            LayoutChoice(choice);
        }
        verticalLayoutGroup.enabled = false;
        contentSizeFitter.enabled = false;
        foreach (ChoiceView choiceView in choiceViews)
        {
            choiceView.rectTransform.sizeDelta = new Vector2(choiceView.rectTransform.sizeDelta.x, choiceView.rectTransform.sizeDelta.y + verticalLayoutGroup.spacing * 0.5f);
        }
    }

    public ChoiceView LayoutChoice(Choice choice)
    {
        ChoiceView choiceView = Instantiate(choiceViewPrefab);
        choiceView.transform.SetParent(transform, false);
        //choiceView.choiceGroupView = this;
        //choiceView.LayoutText(choice);
        choiceViews.Add(choiceView);
        return choiceView;
    }


}
