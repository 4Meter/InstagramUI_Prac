//
//  StoryView.swift
//  InstagramUI_Prac
//
//  Created by user on 2022/6/25.
//

import SwiftUI


struct UserStoryView: View {
    var body: some View {
        VStack(spacing:6) {
                
            ZStack(alignment: .center) {
                Image(localUser.photo)
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 64,alignment: .center)
                    .clipShape(Circle())
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(Color("button"))
                    .padding(2)
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 2.5)
                            .fill(Color("Inverse"))
                            .padding(1)
                    )
                    .frame(width: 28, height: 28)
                    .offset(x: 20, y: 20)
            }
            
            Text("Your Story")
                .font(.caption)
                .frame(width: 65,height:16)
                .truncationMode(.tail)
            
        }
        .frame(width: 72, height: 94)
    }
}

struct UserStoryView_Previews: PreviewProvider {
    static var previews: some View {
        UserStoryView()
 
    }
}

struct StoryView: View {
    
    var user:User
    
    var body: some View {
        
        VStack(spacing:6) {
                
            ZStack {
                Image(user.photo)
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 64,alignment: .center)
                    .clipShape(Circle())
                
                if user.seen {
                    Circle()
                        .stroke(Color("border"), lineWidth: 2)
                        .padding(1)
                        .frame(width: 72, height: 72, alignment: .center)
                } else {
                    Circle()
                        .stroke(LinearGradient(colors: [Color("gradient1"),Color("gradient2")], startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 2)
                        .padding(1)
                        .frame(width: 72, height: 72, alignment: .center)
                }
            }
            
            Text(user.name)
                .font(.caption)
                .frame(width: 65,height:16)
                .truncationMode(.tail)
            
        }
        .frame(width: 72, height: 94)
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(user: dummyUsers[0])
        .preferredColorScheme(.dark)
 
    }
}
