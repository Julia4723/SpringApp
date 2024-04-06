//
//  ViewController.swift
//  SpringApp
//
//  Created by user on 04.04.2024.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var springAnimationView: SpringView!
    
    
    private var animation: Animation!
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        let preset = DataStore.shared.presets
        let curve = DataStore.shared.curves
        
        let randomIndex = Int.random(in: 0..<preset.count)
        let nextValue = preset[randomIndex]
        
        
        springAnimationView.animation = nextValue
        springAnimationView.curve = curve.randomElement() ?? ""
        springAnimationView.force = CGFloat(Int.random(in: 1...2))
        springAnimationView.duration = CGFloat(Int.random(in: 1...2))
        springAnimationView.delay = 1
        springAnimationView.animate()
        
        
        presetLabel.text = "Preset: \(springAnimationView.animation)"
        curveLabel.text = "Curve: \(springAnimationView.curve)"
        forceLabel.text = "Force: \(springAnimationView.force)"
        durationLabel.text = "Duration \(springAnimationView.duration)"
        delayLabel.text = "Delay \(springAnimationView.delay)"
        
        
        sender.animation = "zoomIn"
        sender.duration = 1
        sender.setTitle("Run \(nextValue)", for: .normal)
        sender.animate()
    }
    
}
