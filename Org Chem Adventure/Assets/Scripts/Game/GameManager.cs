using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

    public static GameManager Instance;
    public Intro intro;
    public Game game;

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
        game.StartGame();
    }


    public void IncrementProgress()
    {
        ProgressIndex++;
        player.SaveGame();
        game.ContinueGame();
    }

    public int GetProgress()
    {
        return ProgressIndex;
    }

    public void DoIntro()
    {
        intro.PlayIntro();
    }

    private void Initialize()
    {
        player = GetComponent<Player>();
        player.Init();
        ProgressIndex = player.SaveData.ProgressIndex;
    }
}
