using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RPGManager : MonoBehaviour {

    public GameObject Control;
    public GameObject Character;

    public List<GameObject> Stages;

    void Start()
    {
        Control.SetActive(false);
        Character.SetActive(false);
    }

    public void Start(int stage)
    {
        Control.SetActive(true);
        Character.SetActive(true);
    }

}
