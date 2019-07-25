//
//  ViewController.swift
//  SurovtsevAV_HW1.2
//
//  Created by Артем on 24/07/2019.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainTrafficLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTrafficLight.layer.cornerRadius = 25
        startButton.layer.cornerRadius = 25
        
        redLight.alpha = CGFloat(lightAlpha)
        yellowLight.alpha = CGFloat(lightAlpha)
        greenLight.alpha = CGFloat(lightAlpha)
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2

    }
    
    var trafficLightCycle = 0
    let lightAlpha: Float = 0.3
    let fullAlpha: Float = 1

    @IBAction func startButtonPresset() {
        
        switch trafficLightCycle {
        case 0:
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = CGFloat(fullAlpha)
            trafficLightCycle += 1
        case 1:
            redLight.alpha = CGFloat(lightAlpha)
            yellowLight.alpha = CGFloat(fullAlpha)
            trafficLightCycle += 1
        case 2:
            yellowLight.alpha = CGFloat(lightAlpha)
            greenLight.alpha = CGFloat(fullAlpha)
            trafficLightCycle += 1
        case 3:
            greenLight.alpha = CGFloat(lightAlpha)
            redLight.alpha = CGFloat(fullAlpha)
            trafficLightCycle = 1
        default:
            break
        }

//        if startButton.currentTitle == "START" {
//            startButton.setTitle("NEXT", for: .normal)
//            redLight.alpha = 1
//        } else if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        } else if greenLight.alpha == 1 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1
//        }
    }
}


