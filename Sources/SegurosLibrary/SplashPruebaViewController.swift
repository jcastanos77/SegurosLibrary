//
//  SplashPruebaViewController.swift
//  SegurosLibrary
//
//  Created by JECASTAÑOSM on 29/01/25.
//

import UIKit

public class SplashPruebaViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(SplashPruebaViewController.update), userInfo: nil, repeats: true)
    }
    
    // must be internal or public.
    @objc func update() {
        let vc = PruebitaViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
