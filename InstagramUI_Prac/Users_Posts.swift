//
//  Users.swift
//  InstagramUI_Prac
//
//  Created by user on 2022/6/25.
//

import Foundation
import SwiftUI

struct User {
    var id = UUID()
    var name:String
    var photo:String
    var seen:Bool
}

let localUser = User(name: "my_name", photo: "LocalUser", seen: true)

let dummyUsers:[User] = [
    User(name: "GuGu", photo: "User1", seen: false),
    User(name: "PaPa", photo: "User2", seen: false),
    User(name: "slothy", photo: "User3", seen: false),
    User(name: "ms.pig", photo: "User4", seen: false),
    User(name: "jlklkjlkkojjopjlkjk", photo: "User5", seen: true),
    User(name: "mehhh", photo: "User6", seen: true)
]

struct Post {
    
    var id = UUID()
    var user:User
    var location:String?
    var liked:Bool
    var NumOfLike:Int
    var likedBy:[User]
    var content:String
    var photo:String
    var numOfComment:Int
    var hoursAgo:Int
    
}

let dummyPosts:[Post] = [
    Post(user: dummyUsers[0], liked: true, NumOfLike: 1999, likedBy: [dummyUsers[2]], content: "Happy Day!",photo: "Post1", numOfComment: 45, hoursAgo: 2),
    Post(user: dummyUsers[3],location: "Taichung", liked: false, NumOfLike: 124, likedBy: [dummyUsers[5]], content: "Tasty<3<3<3",photo: "Post2", numOfComment: 14, hoursAgo: 5),
    Post(user: dummyUsers[2],location: "Taipei", liked: true, NumOfLike: 532, likedBy: [dummyUsers[1]], content: "Study.\nTired.-_-",photo: "Post3", numOfComment: 33, hoursAgo: 18)
]

