using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Ink.Runtime;
using UnityEngine.UI;

public class Game : MonoBehaviour
{
    // The json compiled ink story
    public TextAsset storyJSON;
    // The ink runtime story object
    private Story story;

    public ContentView ContentPrefab;
    public ContentView ImageContentPrefab;
    public ChoiceGroupView ChoiceGroupPrefab;
    public Transform contentParent;

    public LearnMoreButton LMB;
    public ImageSceneManager imageManager;
    public ContentManager contentManager;
    public Standardview standardView;
    public ChoiceGroupManager choiceGroupManager;
    public AvatarManager avatar;

    private bool StoryRunning = false;

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
            StartCoroutine(ContinueGame(true));

        //StartCoroutine(ContinueStory());
    }

    public IEnumerator ContinueGame(bool progress = false) //Called by progress index update.
    {
        while(StoryRunning)
        {
            yield return new WaitForEndOfFrame();
        }
        if (progress)
        {
            story.ChoosePathString(GameManager.Instance.GetProgress() + "Knot");
            StartCoroutine(EvaluateTagsAndPlay(GameManager.Instance.GetProgress() + "Knot"));
        }
        else
        {
            StartCoroutine(ContinueStory());
        }
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

                ContentView contentView = null;
                if (content.Contains("RXN"))
                    contentView = CreateImageView(content);
                else if (content != string.Empty) // IF it's a dialogue that needs talking
                {
                    contentView = CreateContentView(content);
                    while (contentView.setter.typing) // Wait for the dialogue to displau
                        yield return new WaitForEndOfFrame();
                }
                    
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
        StartCoroutine(ContinueGame(false));
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
            if (content.Contains("ShowLM"))
                LMB.Show( contentManager.URLDB[Convert.ToInt32(""+ content[8]) ] );
            if (content.Contains("HideLM"))
                LMB.Hide();
            if (content.Contains("Audio"))
                GameManager.Instance.Audio.ParseQuery(content);
            if (content.Contains("Tut"))
                GameManager.Instance.tutManager.ParseTutQuery(content.Substring(5, 2));
            if (content.Contains("Outro"))
                GameManager.Instance.outro.ShowOutro();
            content = string.Empty;
        }
        else
        {
            content = content.Replace("<br>", "\n");
        }
        return content;
    }

    ContentView CreateImageView(string content)
    {
        ContentView imgcont = Instantiate(ImageContentPrefab);
        imgcont.transform.SetParent(contentParent, false);
        int n = Convert.ToInt32(content[3] + "");
        imgcont.GetComponent<Image>().sprite = contentManager.ImageDB[n-1];
        imgcont.GetComponent<Image>().preserveAspect = true;
        return imgcont;
    }

    IEnumerator EvaluateTagsAndPlay(string location)
    {
        List<string> tags = story.TagsForContentAtPath(location);
        if (tags != null)
        {
            foreach(string tag in tags)
            {
                if (tag.Contains("clear"))
                {
                    contentManager.NewWindow();
                    yield return new WaitForSeconds(2f);
                }
                if(tag.Contains("Imagew"))
                {
                    imageManager.ChangeSceneWithoutCue(Convert.ToInt32(tag.Substring(6, 1) + ""));
                }
                else if (tag.Contains("Image"))
                {
                    float wait = imageManager.CueScene( Convert.ToInt32(tag.Substring(5, 1) + "" ) );
                    if(wait != 0) avatar.Disappear();
                    yield return new WaitForSeconds(wait);
                    avatar.Appear();
                }
            }          
        }

        StartCoroutine(ContinueStory());
        yield return null;
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