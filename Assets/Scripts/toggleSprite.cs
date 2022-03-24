using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class toggleSprite : MonoBehaviour {

	public Image rend;
	public SourceImage video, volumen;

	// Use this for initialization
	void Start () {
		rend = GetComponent<Image>();
		video = Resources.Load<SourceImage>("pausaDecor3");
		volumen = Resources.Load<SourceImage>("pausaDecor2");
		render.sprite = video;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void whenButtonClicked(){
		if (render.sprite == video){
			render.sprite == volumen;
		}else{
			render.sprite == video;
		}
	}

}
