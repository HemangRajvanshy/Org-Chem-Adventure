using UnityEngine;
using System;
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
#endif
}
