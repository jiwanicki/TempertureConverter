//
//  ViewController.swift
//  TempConverter
//
//  Created by Joseph Iwanicki on 10/15/14.
//  Copyright (c) 2014 JosephIwanicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempFahrenheitTextField: UITextField!
    
    @IBOutlet weak var convertedTextLabel: UILabel!
    
    @IBOutlet weak var TempCelsiusTextField: UITextField!
    
    @IBOutlet weak var convertedCelsiusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let degreeTempTextField = tempFahrenheitTextField.text
        let numberDegreeTempToInt = degreeTempTextField.toInt()
        var integerDegreeTemp = numberDegreeTempToInt!
        let conversionConstant = (integerDegreeTemp - 32) * 5/9
        let convertedTemp = "\(conversionConstant)"
        convertedTextLabel.hidden = false
        convertedTextLabel.text = convertedTemp
        tempFahrenheitTextField.resignFirstResponder()
        
        
    }

    @IBAction func ConvertCelsiusButtonPressed(sender: UIButton) {
        let degreeTempTextField = TempCelsiusTextField.text
        let numberDegreeTempToInt = degreeTempTextField.toInt()
        var integerDegreeTemp = numberDegreeTempToInt!
        let conversionConstant = ((integerDegreeTemp * 9/5)+32) + 1
        let convertedTemp = "\(conversionConstant)"
        convertedCelsiusLabel.hidden = false
        convertedCelsiusLabel.text = convertedTemp
        TempCelsiusTextField.resignFirstResponder()
        
        
        
        
        
    }
}

