using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SettingsButton : MonoBehaviour {

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            GameManager.Instance.paused = !GameManager.Instance.paused;
        }
    }

    public void OnClickSettingsButton()
    {
        GameManager.Instance.paused = true;
    }
}
