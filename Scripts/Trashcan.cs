using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trashcan : SpriteObject {
    public override void OnClick()
    {
        base.OnClick();
        UnityEngine.SceneManagement.SceneManager.LoadScene(0);
    }
}
