//
//  Constants.swift
//  Shooting
//
//  Created by Byoung_wook on 09/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import SpriteKit

struct Particle {
    static let starfield = "starfield"
}

struct Layer {
    static let starfield: CGFloat = 0
    static let meteor: CGFloat = 1
}

struct Atlas {
    static let gameobjects = SKTextureAtlas(named: "Gameobjects")
}
