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
        StartCoroutine(ContinueStory());
    }

    IEnumerator ContinueStory()
    {
        yield return new WaitForEndOfFrame();

    }
}
