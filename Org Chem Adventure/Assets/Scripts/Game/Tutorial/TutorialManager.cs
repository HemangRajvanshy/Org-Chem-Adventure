using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialManager : MonoBehaviour {

    public Tutorial TutPrefab;
    public Transform UICanvas;

    private Tutorial tut;

    public void DoTutorial()
    {
        Tutorial Tut = Instantiate(TutPrefab);
        Tut.transform.SetParent(UICanvas, false);
    }
}
