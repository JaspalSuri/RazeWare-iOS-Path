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
    var currentValue: Int = 0
    // Targe value for the user/player
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert() {
        
        let alertMessage =
        """
        The value of the slider is now: \(currentValue)
        The target value is: \(targetValue)
        """
        
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
    }
    
}

