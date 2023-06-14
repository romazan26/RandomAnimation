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
    
    @IBOutlet var labaleInfo: SpringView!
    @IBOutlet var viewAnimation: SpringView!
    @IBOutlet var runButtonOutlet: SpringButton!

    @IBOutlet var durationNumberLabel: UILabel!
    @IBOutlet var delayNumberLabel: UILabel!
    @IBOutlet var forceNumberLabel: UILabel!
    @IBOutlet var curveNumderLabel: UILabel!
    @IBOutlet var animationNameLabel: UILabel!
    
    @IBAction func runButtonStart(_ sender: SpringButton) {
        if nameAnimation != "" {
            sender.backgroundColor = .purple
            
        }
        labaleInfo.animation = "wobble"
        labaleInfo.force = 1
        labaleInfo.delay = 0
        labaleInfo.curve = "easeIn"
        labaleInfo.duration = 0.7
        labaleInfo.animate()
        
        setValueTitle()
        
        viewAnimation.animation = nameAnimation
        viewAnimation.curve = curveAnimation
        viewAnimation.force = CGFloat(forceAnimation)
        viewAnimation.duration = CGFloat(durationAnimation)
        viewAnimation.delay = CGFloat(delayAnimation)
        viewAnimation.animate()
        
        getRandomValueAnimation()
        runButtonOutlet.setTitle("Start: \(nameAnimation)", for: .normal)
        
    }
    
    private func getRandomValueAnimation(){
        let anination = animations.randomElement()
         
        nameAnimation = anination?.nameAnimation ?? ""
        curveAnimation = anination?.curveAnimation ?? ""
        forceAnimation = Int.random(in: 1...5)
        delayAnimation = Double(String(format: "%.1f", Double.random(in: 0...5))) ?? 0.0
        durationAnimation = Int.random(in: 1...5)
        
    }
    
    private func setValueTitle(){
        animationNameLabel.text = "Preset: \(nameAnimation)"
        curveNumderLabel.text = "Curve: \(curveAnimation)"
        forceNumberLabel.text = "Force: \(forceAnimation)"
        delayNumberLabel.text = "Delay: \(delayAnimation)"
        durationNumberLabel.text = "Duration: \(durationAnimation)"
    }
}

