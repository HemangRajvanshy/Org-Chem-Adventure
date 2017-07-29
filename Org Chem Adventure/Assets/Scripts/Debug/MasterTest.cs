using UnityEngine;
using System;
using UnityEngine.UI;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public class MasterTest : MonoBehaviour
{
#if UNITY_EDITOR
    public bool ClearSaveOnPlay = false;

    void Awake()
    {
        if (ClearSaveOnPlay)
            File.Delete(Application.persistentDataPath + "/game.dat");     
    }

    public Image test;

    public void Click()
    {
        if (test.gameObject.activeInHierarchy)
            test.gameObject.SetActive(false);
        else
            test.gameObject.SetActive(true);

    }
#endif

    
}
