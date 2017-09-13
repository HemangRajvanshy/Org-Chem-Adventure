using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

    public static GameManager Instance;
    public AudioManager Audio;
    public RPGManager rpgManager;
    public Intro intro;
    public SettingsMenu Settings;
    public Game game;

    private Player player;
    private int ProgressIndex;

    private bool _paused = false;
    public bool paused
    {
        get
        {
            return _paused;
        }
        set
        {
            if (_paused == value)
                return;
            _paused = value;
            Time.timeScale = _paused ? 0 : 1;
            if (paused)
            {
                Settings.Show();
                //backgroundAmbienceController.QuietMode();
            }
            else
            {
                Settings.Hide();
                //backgroundAmbienceController.NormalMode();
            }
        }
    }


    void Awake()
    {
        if (!Instance)
            Instance = this;
        Initialize();
    }

    void Start()
    {
        game.StartGame();
    }


    public void IncrementProgress()
    {
        ProgressIndex++;
        player.SaveGame();
        StartCoroutine(game.ContinueGame(true));
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
        player = GameObject.Find("Player").GetComponent<Player>();
        player.Init();
        ProgressIndex = player.SaveData.ProgressIndex;
        if (player.SaveData.Music) //Start the background music if player wants it.
            Audio.PlayBGM();
    }

    // DEBUG
    public void SetProgress(int index)
    {
        ProgressIndex = index;
        player.SaveGame();
    }
}
