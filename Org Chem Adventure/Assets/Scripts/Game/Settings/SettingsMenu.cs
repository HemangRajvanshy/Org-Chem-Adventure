using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SettingsMenu : MonoBehaviour {

	public void Show()
    {
        gameObject.SetActive(true);
    }

    public void Hide()
    {
        gameObject.SetActive(false);
    }

    public void Resume()
    {
        GameManager.Instance.paused = false;
    }

    public void Credits()
    {
        //Show credits
        Debug.Log("Show Credits");
    }

    public void Restart()
    {
        Debug.Log("Restart Game");
    }

    public void ToggleMusic(bool val)
    {
        Debug.Log("Music = " + val);
    }
}
