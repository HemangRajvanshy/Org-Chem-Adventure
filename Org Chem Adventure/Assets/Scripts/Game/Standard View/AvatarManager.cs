using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class AvatarManager : MonoBehaviour {

    public Animator anim;

    public Image Avatar;
    public Sprite Neutral;
    public Sprite Happy;
    public Sprite Confused;

    private bool onScr;

    public void Appear()
    {
        anim.SetBool("OnScreen", true);
        onScr = true;
        //gameObject.SetActive(true);
    }

    public void Disappear()
    {
        anim.SetBool("OnScreen", false);
        onScr = false;
        //gameObject.SetActive(false);
    }
    
    public bool OnScreen()
    {
        return onScr;
    }

    public void UpdateExpression(Story story)
    {
        if (anim.GetBool("OnScreen") == false)
            anim.SetBool("OnScreen", true);

        InkList exp = (InkList)story.variablesState["Expression"];
        string val = exp.ToString();
        if (val == "neutral")
            Avatar.sprite = Neutral;
        else if (val == "happy")
            Avatar.sprite = Happy;
        else
        {
            Debug.Log(val + " Expression not found");
        }
    }
}
