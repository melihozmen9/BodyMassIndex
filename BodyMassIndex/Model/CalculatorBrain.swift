//
//  CalculatorBrain.swift
//  BodyMassIndex
//
//  Created by Kullanici on 13.12.2022.
//

import Foundation
import UIKit


struct CalculatorBrain{
    var bmi : BMI?
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks.", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if (bmiValue <= 24.9){
           bmi = BMI(value: bmiValue, advice: "Fit as a fiddle.", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
          bmi = BMI(value: bmiValue, advice: "", color: #colorLiteral(red: 1, green: 0.01224201724, blue: 0, alpha: 1))
        }
    }
    mutating func getValueBMI() -> String{
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        print(bmiString)
        return bmiString
        }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice."
    }
    func getColor() -> UIColor? {
        return bmi?.color ?? UIColor.white
    }
        
    }

