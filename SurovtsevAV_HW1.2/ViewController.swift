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
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 50
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 25

    }
    
     var trafficLochtCycle = 0

    @IBAction func startButtonPresset() {
        
        
        switch trafficLochtCycle {
        case 0:
            startButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
            trafficLochtCycle = 1
            break
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            trafficLochtCycle = 2
            break
        case 2:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            trafficLochtCycle = 3
            break
        case 3:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            trafficLochtCycle = 1
            break
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


