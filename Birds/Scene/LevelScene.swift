//
//  LevelScene.swift
//  Birds
//
//  Created by Bryan on 16/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import SpriteKit

class LevelScene: SKScene {

    var sceneManagerDelegate: SceneManagerDelegate?
    
    override func didMove(to view: SKView) {
        setupLevelSelection()
    }
    
    func setupLevelSelection() {
        var level = 1
    }
    
    func gotoGameSceneFor(level: Int) {
        sceneManagerDelegate?.presentGameScene(level: level)
    }
    
}


