//
//  Ocean.swift
//  MAPD724-W2023-ICE-1B
//
//  Created by Khushboo Kodwani on 2023-01-21.
//

import GameplayKit
import SpriteKit

class ocean : GameObject
{
    
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        zPosition = 0
        verticleSpeed = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds() {
        if(position.y <= -2107)
        {
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 2107
    }
    func Move()
    {
        position.y -= verticleSpeed!
    }
}
