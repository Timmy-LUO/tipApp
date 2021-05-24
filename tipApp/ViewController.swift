//
//  ViewController.swift
//  tipApp
//
//  Created by 羅承志 on 2021/5/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var percenTextField: UITextField!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var sharingNumberTextField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipCountButton(_ sender: UIButton) {
        let moneyText = moneyTextField.text!
        let percenText = percenTextField.text!
        let sharingNumberText = sharingNumberTextField.text!
        let money = Int(moneyText)
        let percen = Int(percenText)
        let averageNumber = Int(sharingNumberText)
        
        //如果是空字串，顯示“請輸入資料”，
        if money != nil, percenText != nil, averageNumber != nil {
            let totalResult = money! + money! * percen! / 100
            let average = totalResult / averageNumber!
            resultLabel.text = "\(totalResult)"
            splitLabel.text = "\(average)"
        } else {
            resultLabel.text = "請輸入資料"
        }
        view.endEditing(true)
    }
    @IBAction func clearButton(_ sender: UIButton) {
        moneyTextField.text = ""
        percenTextField.text = ""
        sharingNumberTextField.text = ""
        resultLabel.text = "000"
        splitLabel.text = "000"
    }
}

