//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Роман on 13.06.2023.
//

import Foundation
final class DataStore {
    
    static let shared = DataStore()
    
    let nameAnimation = ["pop",
                      "slideLeft",
                      " slideRight",
                      "slideDown",
                      "slideUp",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "fadeIn",
                      "fadeOut",
                      "fadeOutIn",
                      "fadeInLeft",
                      "fadeInRight",
                      "fadeInDown",
                      "fadeInUp",
                      "zoomIn",
                      "zoomOut",
                      "fall",
                      "shake",
                      "flipX",
                      "flipY",
                      "morph",
                      "squeeze",
                      "flash",
                      "wobble",
                      "swing"]
    let curveAnimation = ["easeIn",
                       "easeOut",
                       "easeInOut",
                       "linear",
                       "spring",
                       "easeInSine",
                       "easeOutSine",
                       "easeInOutSine",
                       "easeInQuad",
                       "easeOutQuad",
                       "easeInOutQuad",
                       "easeInCubic",
                       "easeOutCubic",
                       "easeInOutCubic",
                       "easeInQuart",
                       "easeOutQuart",
                       "easeInOutQuart",
                       "easeInQuint",
                       "easeOutQuint",
                       "easeInOutQuint",
                       "easeInExpo",
                       "easeOutExpo",
                       "easeInOutExpo",
                       "easeInCirc",
                       "easeOutCirc",
                       "easeInOutCirc",
                       "easeInBack",
                       "easeOutBack",
                       "easeInOutBack"]
    
    private init() {}
}
