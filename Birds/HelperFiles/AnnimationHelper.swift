//
//  AnnimationHelper.swift
//  Birds
//
//  Created by Bryan Mansell on 22/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import SpriteKit

class AnnimationHelper {
    
    static func loadTextures(from atlas: SKTextureAtlas, with name: String) -> [SKTexture] {
    
        var textures = [SKTexture]()
        
        for index in 0..<atlas.textureNames.count {
            let textureName = name + String(index+1)
            textures.append(atlas.textureNamed(textureName))
        }
        return textures
    }
}
