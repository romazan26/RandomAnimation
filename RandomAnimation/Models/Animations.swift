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
        var animation: [Animation] = []
        
        var namesAnimation = DataStore.shared.nameAnimation
        var curvesAnimation = DataStore.shared.curveAnimation
        
        return animation
    }
}
