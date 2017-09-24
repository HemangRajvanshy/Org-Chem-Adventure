using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ImageSceneManager : MonoBehaviour
{
    public List<ImageScene> ImageScenes;

    public Standardview PlayScreen;
    public AvatarManager avatar;
    public Canvas choiceCanvas;

    private int CurrentScene = 0;

    void Start()
    {
        //CurrentScene = ; Save the CurrentScene in player and retrieve that info from there.
        int prog = GameManager.Instance.GetProgress();

        CurrentScene = GameManager.Instance.player.SaveData.CurrentScene;
        // TODO
        if (CurrentScene == -1)
            CurrentScene = 0;
        if (prog >= 2 && CurrentScene != -1)
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
            PlayScreen.CloseWithoutAnim();
        else
            PlayScreen.CloseWithAnim();

        yield return new WaitForSeconds(ImageScenes[CurrentScene].time);

        PlayScreen.Open();
        while (PlayScreen.GetComponent<Animator>().GetAnimatorTransitionInfo(0).IsName("Close"))
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
        PlayScreen.Open();
    }
}
