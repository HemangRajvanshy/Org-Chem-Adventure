using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class AvatarManager : MonoBehaviour {

    public Image Avatar;
    public Sprite Neutral;
    public Sprite Happy;
    public Sprite Confused;


    public void Appear()
    {

    }

    public void UpdateExpression(Story story)
    {
        InkList exp = (InkList)story.variablesState["Expression"];
        Debug.Log(exp.ToString());
    }
}
