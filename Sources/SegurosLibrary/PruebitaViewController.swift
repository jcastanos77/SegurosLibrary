//
//  PruebitaViewController.swift
//  SegurosLibrary
//
//  Created by JECASTAÑOSM on 29/01/25.
//

import UIKit

public class PruebitaViewController: UIViewController {
    @IBOutlet weak var txFieldTwo: UITextField!
    @IBOutlet weak var txFieldOne: UITextField!
    @IBOutlet weak var numCalculate: UILabel!
    @IBOutlet weak var respLabel: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("si al viewDidLoad segundo")
    }
    
    @IBAction func calculateAction(_ sender: Any) {
        var num1 = 0
        var num2 = 0
        if ((txFieldOne.text?.isEmpty) == nil) && ((txFieldTwo.text?.isEmpty) == nil){
            num1 = Int(txFieldOne.text ?? "0") ?? 0
            num2 = Int(txFieldTwo.text ?? "0") ?? 0
            let total = num1 + num2
            numCalculate.text = "\(total)"
        }else{
            numCalculate.text = "Los campos no deben estar vacios bro"
        }
    }
}
