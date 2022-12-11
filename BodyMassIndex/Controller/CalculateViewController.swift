//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by Kullanici on 8.12.2022.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var BMIValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        var height = String(format: "%.2f", sender.value)
       print(height)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var weight = String(format: "%.0f", sender.value)
        print(weight)
        weightLabel.text = "\(weight)kg"
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        var BMI = weight / pow(height, 2)
        BMIValue = String(format: "%.1f", BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let vcDestination = segue.destination as! ResultViewController
            vcDestination.bmiValue = BMIValue
            
        }
    }
    
}

