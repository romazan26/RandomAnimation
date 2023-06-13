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
    
    private var nameAnimation = ""
    private var curveAnimation = ""
    private var forceAnimation = 0
    private var delayAnimation = 0.0
    private var durationAnimation = 0
    
    @IBOutlet var viewAnimation: SpringView!
    @IBOutlet var runButtonOutlet: SpringButton!

    @IBOutlet var delayNumberLabel: UILabel!
    @IBOutlet var forceNumberLabel: UILabel!
    @IBOutlet var curveNumderLabel: UILabel!
    @IBOutlet var animationNameLabel: UILabel!
    
    @IBAction func runButtonStart(_ sender: SpringButton) {
        getRandomValueAnimation()
        setValueTitle()
        
        viewAnimation.force = CGFloat(forceAnimation)
        viewAnimation.duration = CGFloat(durationAnimation)
        viewAnimation.delay = CGFloat(delayAnimation)
        viewAnimation.animate()
        
        sender.animation = "shake"
        sender.curve = "easeIn"
        sender.force = 2
        sender.duration = 1
        sender.delay = 0.3
        sender.animate()
        
    }
    
    private func getRandomValueAnimation(){
        let anination = animations.randomElement()
         
        nameAnimation = anination?.nameAnimation ?? ""
        curveAnimation = anination?.curveAnimation ?? ""
        
        viewAnimation.animation = nameAnimation
        viewAnimation.curve = curveAnimation
        
        forceAnimation = Int.random(in: 1...5)
        
        delayAnimation = Double(String(format: "%.1f", Double.random(in: 0...1))) ?? 0.0
        
        durationAnimation = Int.random(in: 1...6)
        
    }
    
    private func setValueTitle(){
        animationNameLabel.text = "Preset: \(nameAnimation)"
        curveNumderLabel.text = "Curve: \(curveAnimation)"
        forceNumberLabel.text = "Force: \(forceAnimation)"
        delayNumberLabel.text = "Delay: \(delayAnimation)"
    }
}

