//
//  ContentView.swift
//  InstagramUI_Prac
//
//  Created by user on 2022/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            VStack(spacing:0) {
                
                //MARK: Title Bar
                HStack {
                    
                    Image("Logo")
                    
                    Spacer()
                    
                    HStack(spacing:20) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 23, height: 20)
                                .frame(width: 28, height: 28, alignment: .center)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "plus.app")
                                .resizable()
                                .frame(width: 24.5, height: 24.5)
                                .frame(width: 28, height: 24, alignment: .center)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .resizable()
                                .frame(width: 24.5, height: 24.5)
                                .frame(width: 28, height: 24, alignment: .center)
                        }
                    }
                    .foregroundColor(.primary)
                }
                .padding(.horizontal,16)
                .frame(height: 52, alignment: .leading)
                
                
                //MARK: Posts
                ScrollView(.vertical,showsIndicators: false) {
                    //MARK: Story Bar
                    ScrollView(.horizontal,showsIndicators: false) {
                        
                        HStack {
                            
                            ForEach(dummyUsers,id: \.id) { user in
                                StoryView(user: user)
                            }
                        }
                        .padding(.vertical,10)
                        .padding(.horizontal,10)
                    }

                    Divider()
                    
                    VStack(spacing:0) {
                        ForEach(dummyPosts,id:\.id) { post in
                            PostView(post: post)
                        }
                    }
                }
                
                //MARK: Tab Bar
                
                
                
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
