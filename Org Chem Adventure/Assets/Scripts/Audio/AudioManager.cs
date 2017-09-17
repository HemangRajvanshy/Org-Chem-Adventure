﻿using System.Collections;
using System;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    private bool Play = false;

    public List<AudioClip> BGMDB;
    public List<AudioClip> SFXDB;

    public AudioSource BGM;
    public AudioSource Sfx;

    public void ParseQuery(string s)
    {
        s = s.Substring(7, s.Length - 7);

        if (s.Contains("BG"))
            ChangeBGM(Convert.ToInt32("" + s[2]) );
        if (s.Contains("SFX"))
            PlaySound(SFXDB[ Convert.ToInt32("" + s[3]) ]);
    }

    public void PlayBGM()
    {
        Play = true;
        BGM.Play();
    }

    public void StopBGM()
    {
        Play = false;
        BGM.Pause();
    }

    public void ChangeBGM(int n)
    {
        StartCoroutine(SoundFade(n));

    }

    IEnumerator SoundFade(int n)
    {
        float vol = BGM.volume;
        while(BGM.volume > 0)
        {
            BGM.volume -= Time.deltaTime*(0.3f);
            yield return new WaitForEndOfFrame();
        }
        BGM.clip = BGMDB[n];
        if (Play)
            BGM.Play();

        while (BGM.volume < vol)
        {
            BGM.volume += Time.deltaTime*(0.3f);
            if (BGM.clip.name == "Crowd")
                BGM.volume -= Time.deltaTime * (0.2f);
            yield return new WaitForEndOfFrame();
        }


    }

    public bool Playing()
    {
        return Play;
    }


    //For one shot sounds
    private void PlaySound(AudioClip audioClip, float volume = 1)
    {
        GameObject tempGO = new GameObject("Audio: " + audioClip.name); // create the temp object
        tempGO.transform.SetParent(transform);
        AudioSource audioSource = tempGO.AddComponent<AudioSource>(); // add an audio source
        audioSource.clip = audioClip; // define the clip

        audioSource.spatialBlend = 0;
        audioSource.Play(); // start the sound
        Destroy(tempGO, audioClip.length); // destroy object after clip duration

    }
}