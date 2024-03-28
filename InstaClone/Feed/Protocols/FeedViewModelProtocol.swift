//
//  FeedViewModelProtocol.swift
//  InstaClone
//
//  Created by Vitor Henrique Barreiro Marinho on 28/03/24.
//

import Foundation
import Firebase

protocol FeedViewModelProtocol {
    func signOut()
}

extension FeedViewModelProtocol {
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch let (error) {
            print ("DEBUG - Sign Out error: \(error) ")
        }
    }
}