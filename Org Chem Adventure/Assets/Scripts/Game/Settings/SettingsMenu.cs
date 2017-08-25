using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SettingsMenu : MonoBehaviour {

    public Toggle MusicToggle;

	public void Show()
    {
        gameObject.SetActive(true);
        MusicToggle.isOn = GameManager.Instance.audio.Playing();
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
        Debug.Log("Make Confirm Dialogue");
        GameManager.Instance.paused = false;

        File.Delete(Application.persistentDataPath + "/game.dat");

        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        Canvas.ForceUpdateCanvases();
    }

    public void ToggleMusic(bool val)
    {
        if (val)
            GameManager.Instance.audio.PlayBGM();
        else
            GameManager.Instance.audio.StopBGM();
    }
}
