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
    // Round number
    var roundNumber = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewGame()
    }

    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        
        var points = 100 - difference
        
        score += points
        
        let title: String
        
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        let alertMessage = "You scored \(points) points! \nYou were \(difference) off from \(targetValue)."
        
        let alert = UIAlertController(title: title, message: alertMessage, preferredStyle: .alert)
        
        // Insert a (completion) closure in the handler
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        // Adds the button to the alert
        alert.addAction(action)
        
        // On iOS the alert is presented and then the next line
        // is executed before the user interacts with it.
        present(alert, animated: true, completion: nil)
        
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
        roundNumber += 1
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(roundNumber)
    }
    
    
    @IBAction func startNewGame() {
        startNewRound()
        roundNumber = 0
        score = 0
    }
    
}

