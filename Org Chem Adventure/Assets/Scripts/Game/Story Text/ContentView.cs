using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ContentView : MonoBehaviour {

	public void LayoutText(string content)
    {
        Text text = GetComponent<Text>();
        text.text = content;
    }
}
