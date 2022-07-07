//
//  ViewController.swift
//  MyWork_3
//
//  Created by dmitsmirnov on 07.07.2022.
//

import UIKit
import MyLibraryService

class ViewController: UIViewController {
    
    @Injected var billingService: IBillingService?
    @Injected var authService: IAuthService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Interator.shared.buy()
        
    }
}

