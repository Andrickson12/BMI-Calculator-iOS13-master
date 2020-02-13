//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Andrickson Coste on 2/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    //Function that takes two parameters
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / (height * height)
        
    }
    
    
    
}
