//
//  ProfileView.swift
//  Instagram
//
//  Created by Keshav Kishore on 29/06/22.
//

import SwiftUI

struct ProfileView: View {
    var columns: [GridItem] = [GridItem(.fixed(150)), GridItem(.fixed(150)), GridItem(.fixed(150))]
    var body: some View {
        NavigationView {
            ScrollView {
                ProfileHeaderView()
                LazyVGrid(columns: columns,spacing: 1, content: {
                    ForEach(0...90, id: \.self) {num in
                        let imageName = "image\(Int.random(in: 1...5))"
                        NavigationLink(destination: PostView(userImageName: "user2", imageName: imageName)
                                        .navigationBarTitle("Photo", displayMode: .inline)
                        ) {
                            Image(imageName)
                                .resizable()
                                .frame(width: 155, height: 155, alignment: .center)
                                .aspectRatio(contentMode: .fill)
                        }
                        
                    }
                })
            }
            .padding()
            .navigationBarTitle("iosacademy", displayMode: .inline)
        }
    }
}


struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            // Avatar Image, counts
            HStack {
                Image("user2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                VStack {
                    HeaderCountButtonsView()
                    
                    // Edit profile
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 280, height: 35, alignment: .center)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(8)
                    }
                }
            }
            // User bio
            HStack {
                Text("Welcome to iOS Academy- \nthe best place to learn iOS!")
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20)
                Spacer()
            }
            
        }
    }
}



struct HeaderCountButtonsView: View {
    var body: some View {
        HStack {
            // Posts, followiers, following
            Button {
                // no operation
            } label: {
                Text("3\nPosts")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 50, height: 50, alignment: .center)
            
            
            Button {
                // no operation
            } label: {
                Text("12K\nfollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 80, height: 50, alignment: .center)
            
            
            Button {
                // no operation
            } label: {
                Text("300\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 80, height: 50, alignment: .center)
            
            
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
