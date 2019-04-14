using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaintBoard : MonoBehaviour {
    public RenderTexture target;
    public Texture2D sourcesImg;
    public Material targetMat;
	// Use this for initialization
	void Start ()
    {
    }
	
	// Update is called once per frame
	void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        Graphics.Blit(sourcesImg, target, targetMat);
    }
}
