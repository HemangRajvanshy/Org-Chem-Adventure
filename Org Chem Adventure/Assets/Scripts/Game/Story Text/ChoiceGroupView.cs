using System.Collections;
using Ink.Runtime;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceGroupView : MonoBehaviour {

    public List<ChoiceView> choiceViews;
    public ChoiceView choiceViewPrefab;
    public ImageChoiceView imageChoiceViewPrefab;
    public AcidBaseChoiceView acidBaseChoiceView;

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
    public ChoiceGroupManager Manager
    {
        get
        {
            return transform.parent.GetComponent<ChoiceGroupManager>();
        }
    }

    private bool AcidBase = false;
    private IList<Choice> choiceList;

    public void LayoutChoices(IList<Choice> choices)
    {
        choiceList = choices;
        foreach (Choice choice in choices)
        {
            LayoutChoice(choice);
            SetSize();
        }
        //verticalLayoutGroup.enabled = false;
        //contentSizeFitter.enabled = false;
        foreach (ChoiceView choiceView in choiceViews)
        {
            if(!AcidBase)
                choiceView.rectTransform.sizeDelta = new Vector2(choiceView.rectTransform.sizeDelta.x, choiceView.rectTransform.sizeDelta.y + verticalLayoutGroup.spacing * 0.5f);
        }
    }

    void SetSize()
    {
        Canvas.ForceUpdateCanvases();
        Rect rec = GetComponent<RectTransform>().rect;
        RectTransform rectt = GetComponent<RectTransform>();

        if (rec.height > 240)
            rectt.localPosition = new Vector3 (rectt.localPosition.x, rectt.localPosition.y + rec.height - 240, rectt.localPosition.z);
    }

    public void RenderChoices()
    {
        StartCoroutine(RenderChoicesDelayed());
    }

    private IEnumerator RenderChoicesDelayed()
    {
        foreach (ChoiceView choiceView in choiceViews)
        {
            choiceView.Render();
            yield return new WaitForEndOfFrame();
            //yield return new WaitForSeconds(0.4f);
        }
    }

    public void LayoutChoice(Choice choice)
    {
        string cont = choice.text.Trim();
        if (cont.Contains("_AB"))
        {
            if (!AcidBase)
                SetupAcidBase();
        }
        else if (cont.Contains("__IMG"))
        {
            cont = cont.Substring(5, 2);            
            ImageChoiceSet(cont, choice);
        }
        else
        {
            ChoiceView choiceView = Instantiate(choiceViewPrefab);
            choiceView.transform.SetParent(transform, false);
            choiceView.choiceGroupView = this;
            choiceView.LayoutText(choice);
            choiceViews.Add(choiceView);
        }        
    }

    private void ImageChoiceSet(string cont, Choice choice)
    {
        ImageChoiceView choiceView = Instantiate(imageChoiceViewPrefab);
        choiceView.transform.SetParent(transform, false);
        choiceView.choiceGroupView = this;
        choiceView.SetChoice(choice);
        choiceView.SetImage(cont);
        choiceViews.Add(choiceView);
    }

    private void SetupAcidBase()
    {
        AcidBase = true;
        GameManager.Instance.game.avatar.Disappear();
        AcidBaseChoiceView acidView = Instantiate(acidBaseChoiceView);
        acidView.transform.SetParent(Manager.transform, false);
        acidView.choiceGV = this;
        acidView.Setup(choiceList);
    }

    public void MakeChoice(Choice choice)
    {
        StopAllCoroutines();
        StartCoroutine(FadeOutAndContinue(choice));
    }

    IEnumerator FadeOutAndContinue(Choice choice)
    {
        foreach (ChoiceView choiceView in choiceViews)
        {
            choiceView.StopAllCoroutines();
            if (choiceView.choice == choice)
                choiceView.button.interactable = false;
            else
                choiceView.button.enabled = false;
        }
   
        foreach (ChoiceView choiceView in choiceViews)
        {
            Destroy(choiceView.gameObject);
        }

        yield return new WaitForSeconds(0.25f);
        Destroy(gameObject);
        GameManager.Instance.game.ChooseChoiceIndex(choice.index);
    }

}