//
//  ViewController.swift
//  HW-3.01_SpringAnimation
//
//  Created by Dmitry Parhomenko on 27.01.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    let app = SpringApp.getSpringApp()
    
    var currentAnimation = "pop"
    var nextAnimation = ""
    var currentCurve = "easeIn"
    var nextrandomCurve = ""
    var currentForceNumber = 0.1
    var carrentDurationNumber = 0.2
    var currentDelayNumber = 0.3
    var nextForceNumber = 0.0
    var nextDurationNumber = 0.0
    var nextDelayNumber = 0.0
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationButton: SpringButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        animationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        
        animationLabel.text = "animation: \(currentAnimation)"
        curveLabel.text = " curve: \(currentCurve)"
        forceLabel.text = "forse: \(currentForceNumber)"
        durationLabel.text = "duration: \(carrentDurationNumber)"
        delayLabel.text = "duration: \(currentDelayNumber)"
        
    }
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
        
        animationView.animation = currentAnimation
        animationView.curve = currentCurve
        animationView.force = currentForceNumber
        animationView.duration = carrentDurationNumber
        animationView.delay = currentDelayNumber
        animationView.animate()
        
        getRandomNumber()
        getRandomAnimation()
        changeAnimationLabel()
                
    }
    
    private func getRandomNumber() {
        nextForceNumber = Double(String(format: "%.2f", Double.random(in: 1..<3))) ?? 0
        nextDurationNumber = Double(String(format: "%.2f", Double.random(in: 1..<3))) ?? 0
        nextDelayNumber = Double(String(format: "%.2f", Double.random(in: 1..<3))) ?? 0
    }
    
    private func changeAnimationLabel() {
        animationButton.setTitle("Run \(nextAnimation)", for: .normal)
        animationLabel.text = "animation: \(currentAnimation)"
        currentAnimation = nextAnimation
        curveLabel.text = "curve: \(currentCurve)"
        currentCurve = nextrandomCurve
        forceLabel.text = "forse: \(currentForceNumber)"
        currentForceNumber = nextForceNumber
        durationLabel.text = "duration: \(carrentDurationNumber)"
        carrentDurationNumber = nextDurationNumber
        delayLabel.text = "duration: \(currentDelayNumber)"
        currentDelayNumber = nextDelayNumber
    }
    
    private func getRandomAnimation() {
        if app.present.isEmpty == false {
            nextAnimation = app.present.randomElement() ?? ""
            nextrandomCurve = app.curve.randomElement() ?? ""
        }
    }

}

