//
//  RegistrationViewModel.swift
//  InstaClone
//
//  Created by Vitor Henrique Barreiro Marinho on 27/03/24.
//

import Foundation

struct RegistrationViewModel: RegistrationViewModelProtocol {
    var email: String?
    var password: String?
    var fullName: String?
    var userName: String?
    
    var isValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false && fullName?.isEmpty == false && userName?.isEmpty == false
    }
    
    func register(with user: UserRegistration, completion: @escaping registrationCompletion) {
        
        RegistrationService.register(with: user, completion: completion)
        
//        
//        RegistrationService.register(with: user) { error in
//            if let error = error {
//                print ("DEBUG: Error to register user \(error.localizedDescription)")
//                return
//            }
//            
//            print ("DEBUG: Successfullu Registered user ViewModel")
//
//            
//
//        }
    }
}