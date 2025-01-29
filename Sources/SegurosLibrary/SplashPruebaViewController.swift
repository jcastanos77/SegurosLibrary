//
//  SplashPruebaViewController.swift
//  SegurosLibrary
//
//  Created by JECASTAÑOSM on 29/01/25.
//

import UIKit

public class SplashPruebaViewController: UIViewController {
    
    public init(title: String){
           print(title)
           super.init(nibName: nil, bundle: nil)
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("si al viewdidload")
        let timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(SplashPruebaViewController.update), userInfo: nil, repeats: true)
    }
    
    // must be internal or public.
    @objc func update() {
        print("si entre")
        let vc = PruebitaViewController()
        self.present(vc, animated: true)
    }

}
