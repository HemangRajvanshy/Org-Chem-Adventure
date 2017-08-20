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
    public ContentManager contentManager;
    public ChoiceGroupView ChoiceGroupPrefab;
    public ChoiceGroupManager choiceGroupManager;
    public AvatarManager avatar;
    public Transform contentParent;

    private bool StoryRunning;

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

        if (GameManager.Instance.GetProgress() == 0)
            GameManager.Instance.DoIntro();
        else
            ContinueGame();

        //StartCoroutine(ContinueStory());
    }

    public void ContinueGame() //Called by progress index update.
    {
        story.ChoosePathString(GameManager.Instance.GetProgress() + "Knot");
        EvaluateTags(GameManager.Instance.GetProgress() + "Knot");
        if(!StoryRunning)
            StartCoroutine(ContinueStory()); 
    }

    IEnumerator ContinueStory()
    {
        StoryRunning = true;
        if (story.canContinue)
        { 
            ChoiceGroupView choiceView = null;
            //ChevronButtonView chevronView = null;
            while (story.canContinue)
            {
                string content = story.Continue().Trim();
                content = ParseContent(content);
                if (content != string.Empty)
                    CreateContentView(content);

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
                yield return new WaitForSeconds(0.5f);
                choiceView.RenderChoices();
                yield return new WaitForSeconds(0.5f);
            }
            else
            {
                //chevronView.Render();
                //yield return new WaitForSeconds(2);
            }
        }
        StoryRunning = false;
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
        avatar.UpdateExpression(story);
        ContentView contentView = Instantiate(ContentPrefab);
        contentView.transform.SetParent(contentParent, false);
        contentView.LayoutText(content);
        return contentView;
    }

    string ParseContent(string content)
    {
        if(content.Contains("__"))
        {
            if (content.Contains("IncrementProgress"))
                GameManager.Instance.IncrementProgress();
            content = string.Empty;
        }
        else
        {
            content = content.Replace("<br>", "\n");
        }
        return content;
    }

    void EvaluateTags(string location)
    {
        List<string> tags = story.TagsForContentAtPath(location);
        if (tags != null)
        {
            if (tags.Exists(t => t.Contains("clear")))
                contentManager.NewWindow();
        }       
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