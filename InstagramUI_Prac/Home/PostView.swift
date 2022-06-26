//
//  PostView.swift
//  InstagramUI_Prac
//
//  Created by user on 2022/6/26.
//

import SwiftUI

struct PostView: View {
    
    var post:Post
    
    var body: some View {
        
        VStack(spacing:0) {
            
            //MARK: Profile Line
            HStack {
                //Profile Photo
                ZStack {
                    
                    Image(post.user.photo)
                        .resizable()
                        .frame(width: 30,alignment: .center)
                        .clipShape(Circle())
                    
                    if post.user.seen {
                        Circle()
                            .stroke(Color("border"), lineWidth: 1)
                            .padding(0.5)
                            .frame(width: 34, height: 34, alignment: .center)
                    } else {
                        Circle()
                            .stroke(LinearGradient(colors: [Color("gradient1"),Color("gradient2")], startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 1)
                            .padding(0.5)
                            .frame(width: 34, height: 34, alignment: .center)
                    }
                }
                .padding(.vertical)
                
                //Profile
                VStack(alignment: .leading, spacing: 0) {
                    //Name
                    Text(post.user.name)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    if let location = post.location {
                        Text(location)
                            .font(.subheadline)
                    }
                    
                }
                
                Spacer()
                
                //More
                Image(systemName: "ellipsis")
                    .frame(width: 28, height: 28)
                
            }
            .padding(.horizontal,8)
            .frame(height: 50)
            
            //MARK: Photo
            Image(post.photo)
                .resizable()
                .scaledToFit()
            
            //MARK: Content
            VStack(alignment:.leading, spacing:10) {
                //Buttons
                HStack(spacing:12) {
                    Button {
                        
                    } label: {
                        Image(systemName: post.liked ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 23, height: 20)
                            .frame(width: 28, height: 28, alignment: .center)
                            .foregroundColor(post.liked ? Color.red : Color.primary)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .frame(width: 28, height: 24, alignment: .center)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 24.5, height: 24.5)
                            .frame(width: 28, height: 24, alignment: .center)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                            .resizable()
                            .frame(width: 20, height: 24)
                            .frame(width: 28, height: 24, alignment: .center)
                    }
                    
                }
                .foregroundColor(.primary)
                
                HStack (spacing:8) {
                    HStack(spacing:-7) {
                        ForEach(1...3,id:\.self) {index in
                            Image(dummyUsers[index].photo)
                                .resizable()
                                .frame(width: 18, height: 18)
                                .clipShape(Circle())
                                .overlay {
                                    Circle()
                                        .stroke(lineWidth: 1)
                                        .fill(Color("Inverse"))
                                }
                        }
                    }
                    HStack(spacing:0){
                        Text("Liked by")
                            .font(.subheadline)
                        Text(" \(post.likedBy[0].name) ")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("and")
                            .font(.subheadline)
                        Text(" \(post.NumOfLike-1) ")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("others")
                            .font(.subheadline)
                    }
                }
                
                HStack(alignment:.top,spacing:0) {
                    Text(post.user.name)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(" \(post.content)")
                        .font(.subheadline)
                }
                
                Text("View all \(post.numOfComment) comments")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack(spacing:8) {
                    Image(localUser.photo)
                        .resizable()
                        .clipShape(Circle())
                        .padding(2)
                        .frame(width: 26, height: 26)
                    Text("Add a comment...")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    HStack(spacing:16) {
                        Text("❤️")
                        Text("🙌")
                        Text("⊕")
                    }
                    .font(.subheadline)
                }
                
                Text("\(post.hoursAgo) hours ago")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            .padding(.horizontal,12)
            .padding(.vertical,10)
            
            
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: dummyPosts[2])
    }
}
