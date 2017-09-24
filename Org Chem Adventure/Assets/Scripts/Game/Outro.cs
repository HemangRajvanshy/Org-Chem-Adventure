using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Outro : MonoBehaviour {

    public GameObject OutroObj;
    public GameObject FacebookThing;

    public Text skilltext;

    public string androidAppUrl = "market://details?id=com.google.earth";


    public void ShowOutro(Story story)
    {
        int skillno = (int)story.variablesState["OrgChemLevel"];
        if(skillno >= 105)
        {
            skilltext.text += " expert";
        }
        else if(skillno >= 101)
        {
            skilltext.text += " seasoned";
        }
        else if (skillno >= 97)
        {
            skilltext.text += " skilled";
        }
        else
        {
            skilltext.text += " rookie";
        }

        StartCoroutine(DoOutro());
    }

    IEnumerator DoOutro()
    {
        GameManager.Instance.game.standardView.CloseWithAnim();
        GameManager.Instance.game.avatar.Disappear();

        yield return new WaitForSeconds(0.6f);

        CanvasGroup group = OutroObj.GetComponent<CanvasGroup>();

        group.alpha = 0;
        OutroObj.SetActive(true);

        while (group.alpha < 1)
        {
            group.alpha += Time.deltaTime;
        }


        yield return new WaitForSeconds(3f);

        MNRateUsPopup rateUs = new MNRateUsPopup("Rate Us", "Like the game? \nRate us on Play Store", "RATE GAME", "NO, THANKS");
        rateUs.SetAndroidAppUrl(androidAppUrl);
        rateUs.AddDeclineListener(() => { Debug.Log("rate us declined"); });
        rateUs.AddRemindListener(() => { Debug.Log("remind me later"); });
        rateUs.AddRateUsListener(() => { Debug.Log("rate us!!!"); });
        rateUs.AddDismissListener(() => { Debug.Log("rate us dialog dismissed :("); });
        rateUs.Show();

        FacebookThing.SetActive(true);
    }

    public void FacebookClick()
    {
        Application.OpenURL("https://www.facebook.com/orgchemadv");
    }
}
