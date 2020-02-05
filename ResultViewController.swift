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
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //Dismiss current view
        self.dismiss(animated: true, completion: nil)
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
