//
//  GameViewController.swift
//  Birds
//
//  Created by Bryan on 10/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit


protocol SceneManagerDelegate {
    func presentMenuScene()
    func presentLevelScene()
    func presentGameScene(level: Int)
    
}

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        presentMenuScene()
        }
    }

extension GameViewController: SceneManagerDelegate {
    func presentMenuScene() {
        let menuScene = MenuScene()
        menuScene.sceneManagerDelegate = self
        present(scene: menuScene)
    }
    
    func presentLevelScene() {
        let levelScene = LevelScene()
        levelScene.sceneManagerDelegate = self
        present(scene: levelScene)
    }
    
    func presentGameScene(level: Int) {
        let sceneName = "GameScene_\(level)"
        if let gameScene = SKScene(fileNamed: sceneName) as? GameScene {
            gameScene.sceneManagerDelegate = self
            present(scene: gameScene)
        }
    }
    
    func present(scene: SKScene) {
        if let view = self.view as! SKView? {
            scene.scaleMode = .resizeFill
            view.presentScene(scene)
            view.ignoresSiblingOrder = true
        }
    }
    
}
