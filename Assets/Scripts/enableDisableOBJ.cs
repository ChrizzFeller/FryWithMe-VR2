using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class enableDisableOBJ : MonoBehaviour {

	public GameObject opciones;
	public GameObject menu;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void whenButtonCliked(){
		
		if(opciones.activeInHierarchy == true){
			menu.SetActive(false);
			opciones.SetActive(true);
		}else{
			menu.SetActive(true);
			opciones.SetActive(false);
		}
	}
}
