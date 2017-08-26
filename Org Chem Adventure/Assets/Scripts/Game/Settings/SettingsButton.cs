using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SettingsButton : MonoBehaviour {

    public SettingsMenu settings;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!settings.RestartPanel.activeSelf)
                GameManager.Instance.paused = !GameManager.Instance.paused;
            else
                settings.CancelRestart();
        }
    }

    public void OnClickSettingsButton()
    {
        GameManager.Instance.paused = true;
    }
}
