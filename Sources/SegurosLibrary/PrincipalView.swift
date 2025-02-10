//
//  PrincipalView.swift
//  SegurosLibrary
//
//  Created by JECASTAÑOSM on 30/01/25.
//

import Foundation
import UIKit

public class PrincipalView: UIViewController{
    public static let storyBoard = UIStoryboard.init(name: "PrincipalView", bundle: Bundle.module).instantiateInitialViewController()
   
    var timerTest : Timer?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.startTimer()
    }
    
    func startTimer () {
      guard timerTest == nil else { return }
        
      timerTest =  Timer.scheduledTimer(
          timeInterval: TimeInterval(2),
          target      : self,
          selector    : #selector(PrincipalView.update),
          userInfo    : nil,
          repeats     : true)
    }
    
    // must be internal or public.
    @objc func update() {
        
        let vc = PruebitaViewController(nibName: "PruebitaViewController", bundle: Bundle.module)
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        //self.present(vc, animated: true)
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        timerTest?.invalidate()
        timerTest = nil
    }
}
