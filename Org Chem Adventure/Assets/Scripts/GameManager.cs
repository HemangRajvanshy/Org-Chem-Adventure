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
        player = GetComponent<Player>();
        ProgressIndex = player.SaveData.ProgressIndex;

        if (ProgressIndex == 0)
            intro.PlayIntro();
    }
}
