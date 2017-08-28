using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SettingsMenu : MonoBehaviour {

    public Toggle MusicToggle;
    public GameObject SettingPanel;
    public GameObject RestartPanel;

	public void Show()
    {
        gameObject.SetActive(true);
        SettingPanel.SetActive(true);
        RestartPanel.SetActive(false);
        MusicToggle.isOn = GameManager.Instance.Audio.Playing();
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
        SettingPanel.SetActive(false);
        RestartPanel.SetActive(true);
    }

    public void ConfirmRestart()
    {
        GameManager.Instance.paused = false;

        File.Delete(Application.persistentDataPath + "/game.dat");

        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        Canvas.ForceUpdateCanvases();
    }

    public void CancelRestart()
    {
        SettingPanel.SetActive(true);
        RestartPanel.SetActive(false);
    }

    public void ToggleMusic(bool val)
    {
        if (val)
            GameManager.Instance.Audio.PlayBGM();
        else
            GameManager.Instance.Audio.StopBGM();
    }
}
