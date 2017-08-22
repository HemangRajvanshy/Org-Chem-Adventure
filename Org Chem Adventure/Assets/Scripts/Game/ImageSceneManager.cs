using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageSceneManager : MonoBehaviour
{
    public List<ImageScene> ImageScenes;
    public int S1;
    public int S2;
    public int S3;
    public int S4;

    private int CurrentScene = 0;

    void Start()
    {
        //CurrentScene = ; Save the CurrentScene in player and retrieve that info from there.
        int prog = GameManager.Instance.GetProgress();

        if (prog < S2)
            CurrentScene = 1;
        else if (prog < S3)
            CurrentScene = 2;
        // TODO
        if (prog > 2)
            SetScene(CurrentScene);
    }

    public void CueScene(int scenenum)
    {
        ImageScenes[CurrentScene].Disappear();
        CurrentScene = scenenum;
        ImageScenes[scenenum].Appear();
    }

    public int GetActiveScene() // Used while saving.
    {
        return CurrentScene;
    }

    private void SetScene(int scenenum)
    {
        ImageScenes[scenenum].Set();
    }
}
