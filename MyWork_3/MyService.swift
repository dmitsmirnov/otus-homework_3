//
//  ServiceTest.swift
//  MyWork_3
//
//  Created by dmitsmirnov on 07.07.2022.
//

import Foundation

protocol IBillingService: AnyObject {
    func buy(userId: String)
}

class BillingService: IBillingService {
    func buy(userId: String) {
        print("buy for \(userId)")
    }
}

protocol IAuthService: AnyObject {
    func GetUserId() -> String
}

class AuthService: IAuthService {
    func GetUserId() -> String {
        return "9876543210"
    }
}

class Interator {
    var billingService: IBillingService? = BillingService()
    var authService: IAuthService? = AuthService()
    
    static var shared = Interator()
    
    func buy() {
        if let id = authService?.GetUserId() {
            billingService?.buy(userId: id)
        }
    }
}
