// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class SegurosLibrary{
    public init(){}
    
    @MainActor public func openViewControllerPrincipal()-> UIViewController{
        let vc = SplashPruebaViewController()
        return vc
    }
}
