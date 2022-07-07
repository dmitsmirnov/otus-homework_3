//
//  Resolver.swift
//  MyWork_3
//
//  Created by dmitsmirnov on 07.07.2022.
//

import Foundation

public protocol IResolver: AnyObject {
    func resolve<T: Any>() -> T?
    func register<T: Any>(data: T)
}

public class Resolver: IResolver {
    
    private var services: [String : Any] = [String: Any]()
    
    public static let shared: IResolver = Resolver()
    
    public func resolve<T: Any>() -> T? {
        let key = String(describing: T.self)
        return services[key] as? T
    }
    
    public func register<T: Any>(data: T) {
        let key = String(describing: T.self)
        services[key] = data
    }
}
