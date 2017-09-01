using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using System.Linq;

/*
public class TextSetter : MonoBehaviour {

    public bool typing = false;

    public string text;
    public string targetText;

    private float color;
    int m_colorInt;
    string m_show;

    public float speedMultiplier = 1;
    private float nextStringTimer = 1f;

    public int counter;
    private string[] splitString;

    public void TypeText(string myText)
    {
        if (string.IsNullOrEmpty(myText))
            return;

        targetText += myText;
        typing = true;
        splitString = Split(myText);
    }

    public void Loop()
    {
        if (!typing)
            return;
        
        //nextStringTimer -= Time.deltaTime * speedMultiplier;
        //while (typing)// && nextStringTimer < 0)
        //{
            if (counter < splitString.Length)
            {
                if (color < 1.0f)
                {
                    color += Time.deltaTime / speedMultiplier;
                    m_colorInt = (int)(Mathf.Lerp(0.0f, 1.0f, color) * 255.0f);
                    text = m_show + "<color=\"#000000" + string.Format("{0:X}", m_colorInt) + "\">" + splitString[counter] + "</color>";

                }
                else
                {
                    color = 0.1f;
                    m_show += splitString[counter] + " ";
                    counter++;
                }
            }
            else
            {
                text = m_show;
                FinishTyping();
            } 
        //}
    }

    private void FinishTyping()
    {
        typing = false;
    }
    

    private string[] Split(string input)
    {
        return input.Split(' ');
    }
}
*/


public class TextSetter : MonoBehaviour
{
    public bool typing = false;
    public float SecondsBetweenCharacters = 0.15f;

    public string text;

    private float CommaWait = 0.1f;
    private float SentenceEndWait = 0.2f;

    public void Type(string TargetText)
    {
        StartCoroutine(TypeText(TargetText));
    }

    IEnumerator TypeText(string TargetText)
    {
        typing = true;
        int StrLen = TargetText.Length;
        int CurrentIndx = 0;
        
        while(CurrentIndx < StrLen-1)
        {
            text += TargetText[CurrentIndx];
            if (TargetText[CurrentIndx] != ' ')
            {
                yield return new WaitForSeconds(SecondsBetweenCharacters);

            }
            if (TargetText[CurrentIndx] == ',')
            {
                yield return new WaitForSeconds(CommaWait); 

            }
            else if ( (TargetText[CurrentIndx] == '.' && TargetText[CurrentIndx + 1] != '"'))
            {
                yield return new WaitForSeconds(SentenceEndWait);
            }
            CurrentIndx++;
        }
        text += TargetText[StrLen-1];
        yield return  new WaitForSeconds(0.1f);
        typing = false;
    }
}