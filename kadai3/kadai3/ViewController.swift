//
//  ViewController.swift
//  kadai3
//
//  Created by 永野玄 on 2021/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var firstNum: UITextField!
    @IBOutlet private weak var secondNum: UITextField!
    
    @IBOutlet private weak var firstSwitch: UISwitch!
    
    @IBOutlet private weak var secondSwitch: UISwitch!
    
    @IBOutlet private weak var firstNumSet: UILabel!
    @IBOutlet private weak var secondNumSet: UILabel!
   
    @IBOutlet private weak var resultLabel: UILabel!
    @IBAction func actionFirstSwitch(_ sender: AnyObject) {

        let num1: Int = Int(self.firstNum.text!) ?? 0
       let sum: Int
            if firstSwitch.isOn {
             sum = num1 * -1
            firstNumSet.text = String(sum)
            } else {
           sum = num1 * 1
            firstNumSet.text = String(sum)
        }
        
    }
    @IBAction func actionSecondSwitch(_ sender: AnyObject) {
      
        let num2: Int = Int(self.secondNum.text!) ?? 0
        let sum2: Int
        if secondSwitch.isOn {
            sum2 = num2 * -1
            secondNumSet.text = String(sum2)
        } else {
            sum2 = num2 * 1
            secondNumSet.text = String(sum2)
            }
    }
    
    @IBAction func resultButton(_ sender: Any) {
        let num1: Int = Int(self.firstNum.text!) ?? 0
        let num2: Int = Int(self.secondNum.text!) ?? 0
        let sum: Int
        let sum2: Int
            
        if firstSwitch.isOn {
             sum = num1 * -1
            firstNumSet.text = String(sum)
            } else {
           sum = num1 * 1
            firstNumSet.text = String(sum)
        }
    
        if secondSwitch.isOn {
            sum2 = num2 * -1
            secondNumSet.text = String(sum2)
        } else {
            sum2 = num2 * 1
            secondNumSet.text = String(sum2)
            }
    
        let result = sum + sum2
        self.resultLabel.text = String(result)
    
}
   
            
        
    }



