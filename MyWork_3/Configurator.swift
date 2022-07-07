//  MyWork_3
//
//  Created by dmitsmirnov on 07.07.2022.
//

//import Foundation
import MyLibraryService

class Configurator {
    static let shared = Configurator()
    
    func setup() {
        Resolver.shared.register(data: BillingService() as IBillingService)
        Resolver.shared.register(data: AuthService() as IAuthService)
    }
}
