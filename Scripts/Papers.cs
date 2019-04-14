using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Papers : SpriteObject {
    public PaintObject targetPaint;
    public List<Sprite> SourcesList;
    public override void OnClick()
    {
        base.OnClick();
        if (targetPaint != null)
        {
            Debug.LogWarning("clear");
            targetPaint.ClearRenderTexture();
            targetPaint.SetPaintSources(SourcesList[Random.Range(0, SourcesList.Count)]);
        }
    }
}
