﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

    public static GameManager Instance;
    public Intro intro;

    private Player player;
    private int ProgressIndex;

    void Awake()
    {
        if (!Instance)
            Instance = this;
    }

    void Start()
    {
        Initialize();
        if (ProgressIndex == 0)
            intro.PlayIntro();
    }


    public void IncrementProgress()
    {
        ProgressIndex++;
    }

    public int GetProgress()
    {
        return ProgressIndex;
    }

    private void Initialize()
    {
        player = GetComponent<Player>();
        player.Init();
        ProgressIndex = player.SaveData.ProgressIndex;
    }
}
