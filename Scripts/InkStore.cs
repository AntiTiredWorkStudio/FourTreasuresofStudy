using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InkStore : SpriteObject {
    public SpriteRenderer InkBlackObject;
    public float InkValue;
    public override void OnInit()
    {
        base.OnInit();
        ItemType = Items.INKSTORE;
        InkValue = 0.0f;
        RubAnInkStickOnAnInkSlab(0.0f);
    }
    public override void OnObjectMovement(float deltaPos)
    {
        base.OnObjectMovement(deltaPos);
    }

    public override void OnOtherObjectStayMovement(float deltaPos, SpriteObject target)
    {
        base.OnOtherObjectStayMovement(deltaPos, target);
        if(target.ItemType == Items.BRUSH)
        {
            Debug.Log("添笔");
            OnBrushRub(target,deltaPos);
        }

        if(target.ItemType == Items.INKBRICK)
        {
            Debug.Log("研磨");
            RubAnInkStickOnAnInkSlab(deltaPos);
        }
    }

    void OnBrushRub(SpriteObject brush,float posValue)
    {
        Brush target = brush as Brush;
        target.RubAnBrushOnAnInkSlab(posValue, InkValue);
    }

    void RubAnInkStickOnAnInkSlab(float posValue)
    {
        InkValue = Mathf.Clamp(InkValue + Time.deltaTime *  posValue, 0.0f, 1.0f);
        Color InkBlack = InkBlackObject.color;
        InkBlack.a = InkValue;
        InkBlackObject.color = InkBlack;
    }
}
