using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialManager : MonoBehaviour {

    public Tutorial TutPrefab;
    public Transform UICanvas;

    private Tutorial tut;
    private bool Showing;

    private void Update()
    {
        if (Showing)
        {
            if (Input.GetMouseButtonDown(0))
            { HideTut1(); HideTut2(); }
        }
    }

    public void ParseTutQuery(string query)
    {
        if (query.Contains("S1"))
            ShowTut1();
        if (query.Contains("S2"))
            ShowTut2();
    }

    public void DoTutorial()
    {
        tut = Instantiate(TutPrefab);
        tut.transform.SetParent(UICanvas, false);
    }

    public void ShowTut1()
    {
        DoTutorial();
        Showing = true;
        tut.ShowT1();
    }

    public void ShowTut2()
    {
        Showing = true;
        tut.ShowT2();
    }

    public void HideTut1()
    {
        Showing = false;
        tut.HideT1();
    }

    public void HideTut2()
    {
        Showing = false;
        tut.HideT2();
    }
}