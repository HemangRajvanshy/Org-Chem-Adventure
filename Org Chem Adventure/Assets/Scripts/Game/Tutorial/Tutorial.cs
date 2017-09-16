using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tutorial : MonoBehaviour {

    public GameObject T1;
    public GameObject T2;


    public void ShowT1()
    {
        T1.SetActive(true);
    }

    public void HideT1()
    {
        T1.SetActive(false);
    }

    public void ShowT2()
    {
        T2.SetActive(true);
    }

    public void HideT2()
    {
        T2.SetActive(false);
    }

}
