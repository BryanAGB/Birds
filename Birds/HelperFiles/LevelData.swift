//
//  Level.swift
//  Birds
//
//  Created by Bryan Mansell on 22/06/2018.
//  Copyright © 2018 Bryan Mansell. All rights reserved.
//

import Foundation

struct LevelData {
    let birds: [String]
    
    init?(level: Int) {
        guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as? [String:Any] else {
            return nil
        }
        guard let birds = levelDictionary["Birds"] as? [String] else {
            return nil
            
        }
        self.birds = birds
    }
}
