//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        //Formula to get BMI
        let BMI = weight / (height * height)
        print(BMI)
        //Print
    }
}

