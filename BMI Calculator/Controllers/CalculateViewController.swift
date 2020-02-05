//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //Properties
    var calculatorBrain = CalculatorBrain()
    
    //Outlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        //Print value of slider with only two decimal places
        let currentValue = String(format: "%.2f", sender.value)
        
        //Print value to label
        heightLabel.text = currentValue + " m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        //Print slider value in a whole number instead of float number
        //print(Int(sender.value))
        
        //Print value to label in a whole number value
        let currentValue = String(format: "%.0f", sender.value)
        weightLabel.text = currentValue + " kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //Get value of both sliders
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
        // Pass the selected object to the new view controller.
    }
}

