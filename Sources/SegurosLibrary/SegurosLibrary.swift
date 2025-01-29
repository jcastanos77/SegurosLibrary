// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class SegurosLibrary{
    public init(){}
    
    @MainActor public func openViewControllerPrincipal(with navigatorController: UIViewController?){
        navigatorController?.navigationController?.pushViewController(SplashPruebaViewController(), animated: true)
    }
}
