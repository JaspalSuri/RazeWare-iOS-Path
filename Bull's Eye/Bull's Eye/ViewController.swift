//
//  ViewController.swift
//  Bull's Eye
//
//  Created by Jaspal on 2/15/19.
//  Copyright © 2019 Jaspal Suri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Starting value
    var currentValue = 0
    // Targe value for the user/player
    var targetValue = 0
    // Player's score
    var score = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetValueLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        
        score += points
        
        let alertMessage = "You scored \(points) points!"
        
        let alert = UIAlertController(title: "Hello, World!", message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        // Adds the button to the alert
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        
        // Override the value set in the main storyboard
        currentValue = 50
        // Reset slider thumb position
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetValueLabel.text = String(targetValue)
        scoreLabel.text = String(score)
    }
    
}

