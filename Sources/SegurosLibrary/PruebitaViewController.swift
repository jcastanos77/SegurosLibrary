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
        
        self.title = "Calculadora"
        
        let leftButton = UIBarButtonItem(title: "Átras", style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = leftButton
    }
    
    @objc func backButtonTapped() {
        self.dismiss(animated: true)
    }
    
    @IBAction func calculateAction(_ sender: Any) {
        let num1 = Int(txFieldOne.text ?? "0") ?? 0
        let num2 = Int(txFieldTwo.text ?? "0") ?? 0
        
        if num2 != 0 && num1 != 0{
            let total = num1 + num2
            numCalculate.text = "\(total)"
        }else{
            numCalculate.text = "Los campos no deben estar vacios bro"
        }
    }
}
