//
//  GameScene.swift
//  Shooting
//
//  Created by Byoung_wook on 09/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        //배경설정
        guard let starfield = SKEmitterNode(fileNamed: Particle.starfield) else { return }
        starfield.position = CGPoint(x: size.width / 2, y: size.height)
        starfield.zPosition = Layer.starfield
        starfield.advanceSimulationTime(30)
        self.addChild(starfield)
        
    }
}
