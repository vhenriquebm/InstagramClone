//
//  UserService.swift
//  InstaClone
//
//  Created by Vitor Henrique Barreiro Marinho on 29/03/24.
//

import Firebase

typealias profileCompletion = (User) -> ()
typealias usersCompletion = (([User]) -> ())

struct ProfileService {
    static func getUser(completion: @escaping profileCompletion) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, error in
            
            guard let dictionary = snapshot?.data() else { return }
            let user = User(dictionary: dictionary)
            completion(user)
        }
    }
}

extension ProfileService {
    
    static func getUsers(completion: @escaping usersCompletion) {
        COLLECTION_USERS.getDocuments { (snapshot, error) in
            guard let snapshot = snapshot else { return }
            let users = snapshot.documents.map {User(dictionary: $0.data())}
            completion(users)
        }
    }
}
