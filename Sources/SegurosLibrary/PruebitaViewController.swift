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
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = .clear
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: -20, bottom: 0, trailing: 0)
        backButton.configuration = configuration
            
        let backView = UIView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        backView.addSubview(backButton)
            
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backView)
    }
    
    
    @objc func backButtonTapped() {
        self.dismiss(animated: true)
    }
    
    @IBAction func calculateAction(_ sender: Any) {
        var num1 = Int(txFieldOne.text ?? "0") ?? 0
        var num2 = Int(txFieldTwo.text ?? "0") ?? 0
        
        if num2 != 0 && num1 != 0{
            let total = num1 + num2
            numCalculate.text = "\(total)"
        }else{
            numCalculate.text = "Los campos no deben estar vacios bro"
        }
    }
}
