// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class SegurosLibrary{
    public init(){}
    
    @MainActor public func openViewControllerPrincipal()-> UIViewController{
        let mainStoryboard: UIStoryboard = UIStoryboard(name:"SplashPruebaViewController",bundle:Bundle.main)
        let secondViewController: SplashPruebaViewController = mainStoryboard.instantiateViewController(withIdentifier: "calculadoraSplash") as! SplashPruebaViewController
        return secondViewController
    }
}
