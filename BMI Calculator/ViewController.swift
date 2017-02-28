//
//  ViewController.swift
//  BMI Calculator
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 Fullerton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var heightFT: UITextField!
    @IBOutlet weak var heightIN: UITextField!
    @IBOutlet weak var weightLBS: UITextField!
    @IBOutlet weak var commentLabel: UILabel!
    
    
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var test: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let weightNum: Double? = Double(weightLBS.text!)
        let weightKG = weightNum! * 0.453592
        
        
        let heightFTNum: Double? = Double(heightFT.text!)
        let heightINNum: Double? = Double(heightIN.text!)
        
        let heightTotalInches = (heightFTNum! * 12) + heightINNum!
        
        
        let heightSQMeter = (heightTotalInches * 0.0254) * (heightTotalInches * 0.0254)
        
        
        let BMI = weightKG / heightSQMeter
        
        let BMIString = String(BMI)
        
        test.text = BMIString
        
        if (BMI < 16){
            statusLabel.text = "Severe thiness"
            commentLabel.text = "You need to eat more!"
            self.imageDisplay.image = UIImage(named: "THIN")
        }
        else if(BMI >= 16 && BMI < 17 ){
            statusLabel.text = "Moderate thiness"
            commentLabel.text = "You need to eat more!"
            self.imageDisplay.image = UIImage(named: "THIN")
        }
        else if(BMI >= 17 && BMI < 18.50){
            statusLabel.text = "Mild thiness"
            commentLabel.text = "You need to eat more!"
            self.imageDisplay.image = UIImage(named: "THIN")
        }
        else if (BMI >= 18.50 && BMI < 25){
            statusLabel.text = "You are normal!"
            commentLabel.text = "You're healthy!"
            self.imageDisplay.image = UIImage(named: "NORMAL")
        }
        else if (BMI >= 25 && BMI < 30){
            statusLabel.text = "Pre-obese"
            commentLabel.text = "Uh oh.. Be careful"
            self.imageDisplay.image = UIImage(named: "Pre-Obese")
        }
        else if (BMI >= 30 && BMI < 35){
            statusLabel.text = "Obese class I"
            commentLabel.text = "Try eating healthier!"
            self.imageDisplay.image = UIImage(named: "Obese")
        }
        else if (BMI >= 35 && BMI < 40){
            statusLabel.text = "Obese class II"
            commentLabel.text = "Watch what you eat!"
            self.imageDisplay.image = UIImage(named: "Obese")
        }
        else if (BMI >= 40){
            statusLabel.text = "Obese class III"
            commentLabel.text = "Go to the gym!"
            self.imageDisplay.image = UIImage(named: "Obese")
        }
        else{
            statusLabel.text = "Error! Please try again"
        }
        
        
        
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

