using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;

public class Game : MonoBehaviour
{
    // The json compiled ink story
    public TextAsset storyJSON;
    // The ink runtime story object
    private Story story;

    public ContentView ContentPrefab;
    public ChoiceGroupView ChoiceGroupPrefab;
    public ChoiceGroupManager choiceGroupManager;

    public Transform contentParent;

    public void StartGame()
    {
        //Enable things.
        //Tween-fade in the view.

        if (storyJSON == null)
        {
            Debug.LogWarning("Drag a valid story JSON file into the StoryReader component.");
            enabled = false;
        }
        story = new Story(storyJSON.text);
        story.ChoosePathString(GameManager.Instance.GetProgress() + "Knot");

        story.BindExternalFunction("IncrementProgress", () => GameManager.Instance.IncrementProgress());

        StartCoroutine(ContinueStory());
    }

    IEnumerator ContinueStory()
    {
        if(story.canContinue)
        {
            ChoiceGroupView choiceView = null;
            //ChevronButtonView chevronView = null;
            while (story.canContinue)
            {
                string content = story.Continue().Trim();
                ContentView contentView = CreateContentView(content);
                if (!story.canContinue)
                {
                    if (story.currentChoices.Count > 0)
                    {
                        choiceView = CreateChoiceGroupView(story.currentChoices);
                    }
                    //else
                    //{
                    //    chevronView = CreateChevronView();
                    //}
                }
            }
            if (story.currentChoices.Count > 0)
            {
                yield return new WaitForSeconds(1f);
                choiceView.RenderChoices();
                yield return new WaitForSeconds(0.5f);
            }
            else
            {
                //chevronView.Render();
                //yield return new WaitForSeconds(2);
            }
        }
        yield return null;
    }

    public void ChooseChoiceIndex(int choiceIndex)
    {
       // DestroyEmpties();
        story.ChooseChoiceIndex(choiceIndex);
        //hasMadeAChoice = true;
        StartCoroutine(ContinueStory());
    }

    ContentView CreateContentView(string content)
    {
        ContentView contentView = Instantiate(ContentPrefab);
        contentView.transform.SetParent(contentParent, false);
        content = ParseContent(content);
        contentView.LayoutText(content);
        return contentView;
    }

    string ParseContent(string content)
    {
        content = content.Replace("<br>", "\n");
        return content;
    }

    ChoiceGroupView CreateChoiceGroupView(IList<Choice> Choices)
    {
        ChoiceGroupView choiceGroupView = Instantiate(ChoiceGroupPrefab);
        choiceGroupView.transform.SetParent(choiceGroupManager.transform, false);
        choiceGroupView.LayoutChoices(Choices);
        //CreateEmptyView(choiceGroupView.rectTransform.sizeDelta.y);
        return choiceGroupView;
    }
}
