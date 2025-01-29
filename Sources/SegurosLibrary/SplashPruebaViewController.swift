//
//  SplashPruebaViewController.swift
//  SegurosLibrary
//
//  Created by JECASTAÑOSM on 29/01/25.
//

import UIKit

public class SplashPruebaViewController: UIViewController {
    var timerTest : Timer?
    
    public init(title: String){
           print(title)
           super.init(nibName: nil, bundle: nil)
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("si al viewDidAppear")
        self.startTimer()
    }
    
    func startTimer () {
      guard timerTest == nil else { return }
        print("si al timer")
      timerTest =  Timer.scheduledTimer(
          timeInterval: TimeInterval(0.3),
          target      : self,
          selector    : #selector(SplashPruebaViewController.update),
          userInfo    : nil,
          repeats     : true)
    }
    
    // must be internal or public.
    @objc func update() {
        print("si al update")
        let vc = PruebitaViewController()
        self.present(vc, animated: true)
        timerTest?.invalidate()
        timerTest = nil
    }

}
