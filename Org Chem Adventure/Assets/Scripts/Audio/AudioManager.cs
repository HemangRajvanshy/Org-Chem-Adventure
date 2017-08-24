using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    private AudioSource audioSource
    {
        get
        {
            return GetComponent<AudioSource>();
        }
    }

    public void PlayBGM()
    {
        audioSource.Play();
    }

    public void StopBGM()
    {
        audioSource.Stop();
    }

    public bool Playing()
    {
        return audioSource.isPlaying;
    }

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
