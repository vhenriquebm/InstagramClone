//
//  FeedServiceProtocol.swift
//  InstaClone
//
//  Created by Vitor Henrique Barreiro Marinho on 20/09/24.
//

import Foundation

protocol FeedServiceProtocol {
    func getPosts(completion: @escaping ([PostList])->())
    func like(post: PostList, completion: @escaping(FirestoreCompletion))
    func unLike(post: PostList, completion: @escaping(FirestoreCompletion))
    func checkIfUserLikedPost(post: PostList, completion: @escaping(Bool) -> Void)
}
