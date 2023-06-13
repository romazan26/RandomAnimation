//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Роман on 13.06.2023.
//

import UIKit
import SpringAnimation

final class RandAnimationViewController: UIViewController {

    var animations = Animation.getAnimations()
    
    @IBOutlet var viewAnimation: SpringView!
    @IBOutlet var runButtonOutlet: SpringButton!

    @IBOutlet var delayNumberLabel: UILabel!
    @IBOutlet var forceNumberLabel: UILabel!
    @IBOutlet var curveNumderLabel: UILabel!
    @IBOutlet var animationNameLabel: UILabel!
    
    @IBAction func runButtonStart(_ sender: SpringButton) {
        print(animations)
        viewAnimation.animation = "shake"
        viewAnimation.curve = "easeIn"
        viewAnimation.force = 2
        viewAnimation.duration = 1
        viewAnimation.delay = 0.3
        viewAnimation.animate()
        
        sender.animation = "shake"
        sender.curve = "easeIn"
        sender.force = 2
        sender.duration = 1
        sender.delay = 0.3
        sender.animate()
        
    }
    
}

