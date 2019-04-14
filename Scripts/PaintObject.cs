using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaintObject : SpriteObject {
    public Vector3 targetBound;
    public RenderTexture targetBoard;
    public override void OnInit()
    {
        base.OnInit();
         targetBound = transform.GetComponent<Collider2D>().bounds.extents;
        Debug.LogWarning(targetBound);
    }

    public void ClearRenderTexture()
    {
        targetBoard.Release();
    }

    public void SetPaintSources(Sprite target)
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = target;
    }

    public override void OnOtherObjectStayMovement(float deltaPos, SpriteObject target)
    {
        base.OnOtherObjectStayMovement(deltaPos, target);
        if (target.ItemType == Items.BRUSH)
        {
            Brush tBrush = target as Brush;
            if(tBrush.InkValue <= 0)
            {
                //GetComponent<SpriteRenderer>().materials[0].;
                //GetComponent<SpriteRenderer>().materials[0].SetFloat("_y", offsetY);
                return;
            }
            
            tBrush.BrushHead.GetComponent<Collider2D>();


            float offsetX = Mathf.Clamp((targetBound.x + tBrush.BrushHead.transform.position.x - transform.position.x)/ targetBound.x, 0.0f, 2.0f) / 2.0f;
            float offsetY = Mathf.Clamp((targetBound.y + tBrush.BrushHead.transform.position.y - transform.position.y)/ targetBound.y,0.0f,2.0f)/2.0f;

            GetComponent<SpriteRenderer>().materials[0].SetFloat("_x", offsetX);
            GetComponent<SpriteRenderer>().materials[0].SetFloat("_y", offsetY);
            Debug.LogWarning(offsetX + "," + offsetY);

            Debug.DrawLine(tBrush.BrushHead.transform.position, transform.position,Color.red);
        }
    }
}
