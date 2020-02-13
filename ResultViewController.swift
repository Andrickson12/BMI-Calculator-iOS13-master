//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Andrickson Coste on 2/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //Properties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    //Outlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //Dismiss current view
        self.dismiss(animated: true, completion: nil)
        
    }
}
