﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageSceneManager : MonoBehaviour
{
    public List<ImageScene> ImageScenes;
    public int S1;
    public int S2;
    public int S3;
    public int S4;
    public int S5;

    public GameObject PlayScreen;
    public AvatarManager avatar;
    public Canvas choiceCanvas;

    private int CurrentScene = 0;

    void Start()
    {
        //CurrentScene = ; Save the CurrentScene in player and retrieve that info from there.
        int prog = GameManager.Instance.GetProgress();

        if (prog < S2)
            CurrentScene = 1;
        else if (prog < S3)
            CurrentScene = 2;
        else if (prog < S4)
            CurrentScene = 3;
        else if (prog < S5)
            CurrentScene = 4;
        // TODO
        if (prog > 2)
            SetScene(CurrentScene);
    }

    public float CueScene(int scenenum)
    {
        ImageScenes[CurrentScene].Disappear();
        CurrentScene = scenenum;
        ImageScenes[scenenum].Appear();
        StartCoroutine(Display());
        return ImageScenes[CurrentScene].time + ImageScenes[CurrentScene].transistionwait; //TODO change for different image/situations
    }

    IEnumerator Display()
    {
        if (ImageScenes[CurrentScene].time == 0)
            PlayScreen.SetActive(false);
        else
            PlayScreen.GetComponent<Animator>().SetTrigger("Close");

        yield return new WaitForSeconds(ImageScenes[CurrentScene].time);
        PlayScreen.SetActive(true);
        PlayScreen.GetComponent<Animator>().SetTrigger("Open");
        while (PlayScreen.GetComponent<Animator>().GetAnimatorTransitionInfo(0).IsName("Base"))
            yield return new WaitForSeconds(0.1f); 
    }

    public int GetActiveScene() // Used while saving.
    {
        return CurrentScene;
    }

    public void ChangeSceneWithoutCue(int scenenum)
    {
        ImageScenes[scenenum].Set(ImageScenes[CurrentScene]);
        CurrentScene = scenenum;
    }

    private void SetScene(int scenenum)
    {
        ImageScenes[scenenum].Set();
        PlayScreen.GetComponent<Animator>().SetTrigger("Open");
    }
}
