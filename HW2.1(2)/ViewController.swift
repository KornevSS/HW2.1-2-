//
//  ViewController.swift
//  HW2.1(2)
//
//  Created by Сергей Корнев on 26.01.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLight: UIStackView!
    
    @IBOutlet var switchTrafficLightButton: UIButton!
    
    private var currentTrafficLightSectionActive = -1 // None active sections
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchTrafficLightButton.layer.cornerRadius = 10
        for singleLight in trafficLight.arrangedSubviews {
            singleLight.layer.cornerRadius = 75
        }
    }

    @IBAction func switchLightButtonPressed() {
        if currentTrafficLightSectionActive == -1 {
            switchTrafficLightButton.setTitle("Next", for: .normal)
            currentTrafficLightSectionActive = 0
            trafficLight.arrangedSubviews[currentTrafficLightSectionActive].alpha = 1
        } else {
            trafficLight.arrangedSubviews[currentTrafficLightSectionActive].alpha = 0.3
            currentTrafficLightSectionActive += 1
            if currentTrafficLightSectionActive > 2 {
                currentTrafficLightSectionActive = 0
            }
            trafficLight.arrangedSubviews[currentTrafficLightSectionActive].alpha = 1
        }

    }
    
}

