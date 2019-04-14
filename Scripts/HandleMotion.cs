using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[RequireComponent(typeof(Camera))]
public class HandleMotion : MonoBehaviour {
    public Camera controlCam;
    public GameObject PickedObject = null;
    public Vector2 pickedDeltaValue;
    Vector3 lastPosition;
    public Vector3 deltaPosition;
	// Use this for initialization
	void Start () {
        controlCam = GetComponent<Camera>();
    }
	
	// Update is called once per frame
	void Update ()
    {
        Ray ray = controlCam.ScreenPointToRay(Input.mousePosition);
        if (Input.GetKeyDown(KeyCode.Mouse0))
        {
            PickObject(ray);
        }
        if (Input.GetKeyUp(KeyCode.Mouse0))
        {
            ReleaseObject(ray);
        }
        PickedObjectFollow(ray);
    }
    void PickedObjectFollow(Ray ray)
    {
        if(PickedObject == null)
        {
            return;
        }
        Vector2 targetPos = ray.origin;
        PickedObject.transform.position = targetPos - pickedDeltaValue;
        SpriteObject sObject = PickedObject.GetComponent<SpriteObject>();
        deltaPosition = PickedObject.transform.position - lastPosition;
        lastPosition = PickedObject.transform.position;
        if (sObject!=null)
        {
            sObject.OnPickingObject(deltaPosition.magnitude);
        }
    }

    GameObject controlTarget = null;
    void PickObject(Ray ray)
    {
        RaycastHit2D targetInfo = Physics2D.Raycast(ray.origin, ray.direction * 1000.0f);
        if (targetInfo.collider != null) 
        {
            if (targetInfo.collider.gameObject.tag != "DragStatic")
            {
                PickedObject = targetInfo.collider.gameObject;
                pickedDeltaValue = ray.origin - PickedObject.transform.position;
                lastPosition = PickedObject.transform.position;
                deltaPosition = Vector2.zero;
            }
            controlTarget = targetInfo.collider.gameObject;
        }
    }

    void ReleaseObject(Ray ray)
    {
        PickedObject = null;
        pickedDeltaValue = Vector2.zero;
        lastPosition = Vector2.zero;
        deltaPosition = Vector2.zero;
        RaycastHit2D targetInfo = Physics2D.Raycast(ray.origin, ray.direction * 1000.0f);
        if (targetInfo.collider != null)
        {
            if(targetInfo.collider.gameObject == controlTarget)
            {
                SpriteObject targetSController = controlTarget.GetComponent<SpriteObject>();
                if (targetSController != null)
                {
                    targetSController.OnClick();
                }
            }
        }
    }
}
