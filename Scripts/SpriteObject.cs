using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpriteObject : MonoBehaviour {
    public enum Items
    {
        INKSTORE,
        BRUSH,
        INKBRICK,
        PAPER,
        OTHER
    }
    public enum EnableDrag
    {
        YES,
        NO
    }
    public Items ItemType = Items.OTHER;
    public EnableDrag DragEnable = EnableDrag.YES;
    List<SpriteRenderer> targetRenderObjects;
    Dictionary<SpriteRenderer, int> LayerMaskList;
    public GameObject actionObject;

	// Use this for initialization
	void Start () {
        targetRenderObjects = new List<SpriteRenderer>(GetComponentsInChildren<SpriteRenderer>());
        LayerMaskList = new Dictionary<SpriteRenderer, int>();
        foreach(SpriteRenderer sRend in targetRenderObjects)
        {
            LayerMaskList.Add(sRend, sRend.sortingOrder);
        }
        OnPickingObject();
        OnInit();
    }
    public virtual void OnInit()
    {

    }
	// Update is called once per frame
	public void OnPickingObject (float deltaPosition=0.0f)
    {
        foreach (SpriteRenderer sRend in targetRenderObjects)
        {
            sRend.sortingOrder = LayerMaskList[sRend] + (int)(transform.position.y);
        }
        if (Mathf.Abs(deltaPosition) > 0.0f)
        {
            OnObjectMovement(Mathf.Abs(deltaPosition));
            if (actionObject != null)
            {
                SpriteObject Action = actionObject.GetComponent<SpriteObject>();
                Action.OnOtherObjectStayMovement(Mathf.Abs(deltaPosition), gameObject.GetComponentInChildren<SpriteObject>());
            }
        }
    }

    public virtual void OnObjectMovement(float deltaPos)
    {
        //Debug.LogWarning("self movement:" + name);
    }

    public virtual void OnOtherObjectStayMovement(float deltaPos, SpriteObject target)
    {
        //Debug.LogWarning(name+": other movement:" + target.name);
    }

    public virtual void OnClick()
    {
        Debug.Log("click:" + name);
    }

    public void OnTriggerEnter2D(Collider2D target)
    {
        if(actionObject != null)
        {
            return;
        }
        if (target.gameObject.name != name)
        {
            SpriteObject tSprite = target.gameObject.GetComponentInParent<SpriteObject>();
            if(tSprite.actionObject != null)
            {
                return;
            }
            Debug.LogWarning(target.gameObject.name + ",enter");
            actionObject = tSprite.gameObject;
            tSprite.actionObject = gameObject;
        }
    }
    public void OnTriggerExit2D(Collider2D target)
    {
        if(actionObject == null)
        {
            return;
        }
        bool result = false;
        SpriteObject tSprite = target.gameObject.GetComponentInParent<SpriteObject>();
        if(tSprite.actionObject != null && tSprite.actionObject == gameObject)
        {
            tSprite.actionObject = null;
            result = true;
        }
        if (actionObject != null && actionObject == tSprite.gameObject)
        {
            actionObject = null;
            result = true;
        }
        if (result)
        {
            Debug.LogWarning(target.gameObject.name + ",exit");
        }
    }

    void OnDrawGizmos()
    {
        if (actionObject != null)
        {
            Gizmos.color = Color.blue;
            Gizmos.DrawLine(transform.position, actionObject.transform.position);
        }
    }
}
