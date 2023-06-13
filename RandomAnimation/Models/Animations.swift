//
//  Animations.swift
//  RandomAnimation
//
//  Created by Роман on 13.06.2023.
//

import Foundation
struct Animation {
    let nameAnimation: String
    let curveAnimation: String
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let namesAnimation = DataStore.shared.nameAnimation
        let curvesAnimation = DataStore.shared.curveAnimation
        
        let itterationCount = min(
            namesAnimation.count,
            curvesAnimation.count
        )
        for index in 0..<itterationCount {
            let animation = Animation(
                nameAnimation: namesAnimation[index],
                curveAnimation: curvesAnimation[index]
            )
            animations.append(animation)
        }
        
        return animations
    }
}
