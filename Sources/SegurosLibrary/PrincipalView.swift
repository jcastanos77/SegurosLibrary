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
        print("si al viewDidAppear")
        self.startTimer()
    }
    
    func startTimer () {
      guard timerTest == nil else { return }
        print("si al timer")
      timerTest =  Timer.scheduledTimer(
          timeInterval: TimeInterval(4),
          target      : self,
          selector    : #selector(PrincipalView.update),
          userInfo    : nil,
          repeats     : true)
    }
    
    // must be internal or public.
    @objc func update() {
        print("si al update")
        let vc = PruebitaViewController()
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        timerTest?.invalidate()
        timerTest = nil
    }
}
