using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChoiceGroupManager : MonoBehaviour {
    [SerializeField]
    public List<ListWrapper> ImageDB;
	
}

[System.Serializable]
public class ListWrapper
{
    public List<Sprite> myList;
}