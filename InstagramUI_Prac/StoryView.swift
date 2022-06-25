//
//  StoryView.swift
//  InstagramUI_Prac
//
//  Created by user on 2022/6/25.
//

import SwiftUI

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
