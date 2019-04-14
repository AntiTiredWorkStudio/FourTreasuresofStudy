using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Brush : SpriteObject
{
    public SpriteRenderer InkBlackObject;
    public float InkValue;
    public GameObject BrushHead;
    public override void OnInit()
    {
        base.OnInit();
        ItemType = Items.BRUSH;
        InkValue = 0.0f;
        RubAnBrushOnAnInkSlab(0.0f,0.0f);
    }
    public override void OnObjectMovement(float deltaPos)
    {
        base.OnObjectMovement(deltaPos);

    }
    public override void OnOtherObjectStayMovement(float deltaPos, SpriteObject target)
    {
        base.OnOtherObjectStayMovement(deltaPos, target);
    }

    public void RubAnBrushOnAnInkSlab(float posValue,float inkStoreInkValue)
    {

        InkValue = Mathf.Clamp(InkValue + Time.deltaTime * 10f * posValue, 0.0f, inkStoreInkValue);
        Color InkBlack = InkBlackObject.color;
        InkBlack.a = InkValue;
        InkBlackObject.color = InkBlack;
    }
}
