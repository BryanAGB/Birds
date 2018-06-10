//
//  GameScene.swift
//  Birds
//
//  Created by Bryan on 10/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var mapNode = SKTileMapNode()
    let gameCamera = GameCamera()
    var panRecogniser = UIPanGestureRecognizer()
    
    override func didMove(to view: SKView) {
      setupLevel()
      setupGestureRecognisers()
    }
    
    func setupGestureRecognisers() {
        guard let view = view else { return }
        panRecogniser = UIPanGestureRecognizer(target: self, action: #selector(pan))
        view.addGestureRecognizer(panRecogniser)
    }
    
    func addCamera() {
        guard let view = view else { return }
        addChild(gameCamera)
        gameCamera.position = CGPoint(x: view.bounds.size.width/2, y: view.bounds.size.height/2)
        camera = gameCamera
        gameCamera.setConstraints(with: self, and: mapNode.frame, to: nil)
    }
    
    func setupLevel() {
        if let mapNode = childNode(withName: "Tile Map Node") as? SKTileMapNode {
            self.mapNode = mapNode
        }
        addCamera()
    }
    
}

extension GameScene {
    @objc func pan(sender: UIPanGestureRecognizer) {
        guard let view = view else { return }
        let translation = sender.translation(in: view)
        gameCamera.position = CGPoint(x: gameCamera.position.x - translation.x, y: gameCamera.position.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
}
