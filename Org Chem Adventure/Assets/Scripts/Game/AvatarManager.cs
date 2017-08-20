using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class AvatarManager : MonoBehaviour {


    public void Appear()
    {

    }

    public void UpdateExpression(Story story)
    {
        var exp = story.variablesState["Expression"];
        Debug.Log(exp);
    }
}
