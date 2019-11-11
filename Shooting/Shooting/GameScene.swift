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
    
    var meteorTimer = Timer()
    var meteorInterval: TimeInterval = 2.0
    
    
    override func didMove(to view: SKView) {
        
        //배경설정
        guard let starfield = SKEmitterNode(fileNamed: Particle.starfield) else { return }
        starfield.position = CGPoint(x: size.width / 2, y: size.height)
        starfield.zPosition = Layer.starfield
        starfield.advanceSimulationTime(30)
        self.addChild(starfield)
        
        meteorTimer = setTimer(interval: meteorInterval, function: self.addMeteor)
    }
    
    func addMeteor() {
       let randomMeteor = arc4random_uniform(UInt32(3)) + 1
       let randomXPos = CGFloat(arc4random_uniform(UInt32(self.size.width)))
       let randomSpeed = TimeInterval(arc4random_uniform(UInt32(5)) + 5)
       
       let texture = Atlas.gameobjects.textureNamed("meteor\(randomMeteor)")
       let meteor = SKSpriteNode(texture: texture)
       meteor.name = "meteor"
       meteor.position = CGPoint(x: randomXPos, y: self.size.height + meteor.size.height)
       meteor.zPosition = Layer.meteor
        
        self.addChild(meteor)
       
       let moveAct = SKAction.moveTo(y: -meteor.size.height, duration: randomSpeed)
       let rotateAct = SKAction.rotate(toAngle: CGFloat(Double.pi), duration: randomSpeed)
       let moveandRotateAct = SKAction.group([moveAct, rotateAct])
       let removeAct = SKAction.removeFromParent()
       
       meteor.run(SKAction.sequence([moveandRotateAct, removeAct]))
    }
    func setTimer(interval: TimeInterval, function:@escaping () -> Void) -> Timer {
        let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            function()
        }
        timer.tolerance = interval * 0.2
        
        return timer
    }
}
