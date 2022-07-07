//
//  Injected.swift
//  MyWork_3
//
//  Created by dmitsmirnov on 06.07.2022.
//

import Foundation

@propertyWrapper
public struct Injected<Service: Any> {
    
    private var service: Service? = nil
    private var resolver: IResolver = Resolver.shared
    
    public init() {}
    
    public var wrappedValue: Service? {
        mutating get {
            if service == nil {
                self.service = resolver.resolve()
                
                return service
            } else {
                return service
            }
        }
        mutating set {
            self.service = newValue
        }
        
    }
    
    public var projectedValue: Injected<Service> {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
}
