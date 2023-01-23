//
//  Player.swift
//  MAPD724-W2023-ICE-1B
//
//  Created by Parth Maru on 2023-01-21.
//

import GameplayKit
import SpriteKit

class Player : GameObject
{
    //init
    init(){
        super.init(imageString: "plane", initialScale: 2)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //lifecycle
    
    override func Start() {
        zPosition = 2
        Reset()
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func CheckBounds() {
        //constrain on left
        if(position.x <= -255){
            position.x = -255
        }
        
        
        //constrain on right
        if(position.x >= 255){
            position.x = 255
        }
    }
    
    override func Reset() {
        position.y = -495
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
