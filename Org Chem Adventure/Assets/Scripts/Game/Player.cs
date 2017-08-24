using UnityEngine;
using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public class Player : MonoBehaviour {

	public Save SaveData { get; private set; }

    void OnDestroy()
    {
        SaveGame();
    }


    public void Init()
    {
        Load();

        if (!PlayerDataExist())
            NewSave();
    }

    public void SaveGame()
    {
        BinaryFormatter formatter = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/game.dat");

        Save save = new Save();

        save.ProgressIndex = GameManager.Instance.GetProgress();
        save.Music = GameManager.Instance.audio.Playing();

        formatter.Serialize(file, save);
        file.Close();
    }



    private void NewSave()
    {
        SaveData = new Save();

        SaveData.ProgressIndex = 0;

        SaveData.Music = true;

        BinaryFormatter formatter = new BinaryFormatter();

        FileStream file1 = File.Create(Application.persistentDataPath + "/game.dat");
        formatter.Serialize(file1, SaveData);
        file1.Close();
    }

    private void Load()
    {
        if (PlayerDataExist())
        {
            BinaryFormatter formatter = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/game.dat", FileMode.Open);
            Save save = (Save)formatter.Deserialize(file);
            file.Close();

            SaveData = save;
        }
        else
        {
            SaveData = null;
        }
    }

    private bool PlayerDataExist()
    {
        return File.Exists(Application.persistentDataPath + "/game.dat");
    }
}

[Serializable]
public class Save
{
    public bool Music;

    public int ProgressIndex;
}
