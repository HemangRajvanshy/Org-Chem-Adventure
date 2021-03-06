using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GraphicPulser : MonoBehaviour {
	public Graphic graphic;
	public float timer = 0;
	public float speed = 1;
	public AnimationCurve pulseCurve = new AnimationCurve(new Keyframe(0.0f,0.5f), new Keyframe(0.5f,1.0f), new Keyframe(1f,0.5f));
    public AnimationCurve SizeCurve = new AnimationCurve(new Keyframe(0.0f, 0.5f), new Keyframe(0.5f, 1.0f), new Keyframe(1f, 0.5f));

    public bool pulsecolor = true;

    void Update () {
		timer += speed * Time.deltaTime;
        if(pulsecolor)
            graphic.color = new Color(graphic.color.r, graphic.color.g, graphic.color.b, pulseCurve.Evaluate(timer % 1));
        ((RectTransform)transform).localScale = new Vector3(SizeCurve.Evaluate(timer % 1), SizeCurve.Evaluate(timer % 1), 1);
	}
}