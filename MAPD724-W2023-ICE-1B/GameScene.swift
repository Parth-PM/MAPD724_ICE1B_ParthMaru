//
//  GameScene.swift
//  MAPD724-W2023-ICE-1B
//
//  Created by Parth Maru on 2023-01-21.
//

import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene
{
    
    var Ocean1: ocean?
    var Ocean2: ocean?
    var player: Player?
    
    override func sceneDidLoad()
    {
        
        screenWidth = frame.width
        screenHeight = frame.height
        print("Screen Width: \(String(describing: screenWidth))")
        print("Screen Height: \(String(describing: screenHeight))")

        name = "GAME"
        
        // add first ocean
        Ocean1 = ocean()
        Ocean1?.Reset()
        addChild(Ocean1!)
        
        //add second ocean
        Ocean2 = ocean()
        Ocean2?.position.y = -773
        addChild(Ocean2!)
        
        //add player
        player = Player()
        player?.Reset()
        addChild(player!)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        Ocean1?.Update()
        Ocean2?.Update()
        player?.Update()
    }
}
