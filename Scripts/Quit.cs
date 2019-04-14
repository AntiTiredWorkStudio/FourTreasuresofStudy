using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Quit : SpriteObject {
    public override void OnClick()
    {
        base.OnClick();
        Application.Quit();
    }
}
