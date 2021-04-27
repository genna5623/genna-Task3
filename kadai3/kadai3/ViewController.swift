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

    @IBAction func resultButton(_ sender: Any) {
        let num1: Int = Int(self.firstNum.text!) ?? 0
        let num2: Int = Int(self.secondNum.text!) ?? 0

        let signedNum1: Int
        if firstSwitch.isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }
        firstNumSet.text = String(signedNum1)

        let signedNum2: Int
        if secondSwitch.isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }
        secondNumSet.text = String(signedNum2)

        let result = signedNum1 + signedNum2
        self.resultLabel.text = String(result)
    }
}
