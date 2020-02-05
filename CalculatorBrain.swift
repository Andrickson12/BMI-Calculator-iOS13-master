//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Andrickson Coste on 2/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    
    func getBMIValue() -> String {
       let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
        
    //Function that takes two parameters
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / (height * height)
        
    }
    
    
    
}
