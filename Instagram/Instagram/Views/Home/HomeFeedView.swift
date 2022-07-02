//
//  HomeFeedView.swift
//  Instagram
//
//  Created by Keshav Kishore on 29/06/22.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    ForEach(0...30, id: \.self) {num in
                        PostView()
                            .padding(.bottom, 20)
                    }
                 }
            } .navigationTitle("Instagram")
        }
    }
}


struct PostView: View {
    var body: some View {
        VStack {
            PostHeaderView()
              .padding()
            
            // Image
            Image("foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color(.secondarySystemBackground))
            PostActionsButtonView()
            
            HStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                Text("32 Likes")
                    .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                Spacer()
            }
            .padding(.leading, 30)
            .padding(.top, 10)
            
            
            
            // Captions
            
            Text("Oh m  an 2021 is better than 2020 #newyear #trending #SwiftUI")
                .font(.headline)
                .padding(.top, -15)
            
            // comments
            
            HStack {
            //Date
            Text("1 hour ago")
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.leading)
               Spacer()
            }
            .padding(.leading, 30)
        }
    }
}



struct PostHeaderView: View {
    var body: some View {
        HStack {
            // User profile picture and username
            Image(systemName: "person.circle")
                .resizable()
                .foregroundColor(Color.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            Text("KanyeWest")
                .foregroundColor(Color.blue)
                .bold()
            Spacer()
        }
    }
}


struct PostActionsButtonView: View {
    var body: some View {
        HStack {
            // action button: Like, comment, and share
            Button {
                //Like
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            } .padding(.trailing, 3)
            Button {
                // Comment
            } label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            } .padding(.trailing, 3)
            Button {
                //Like
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            }.padding(.trailing, 3)
            Spacer()
        } .padding(.leading, 25)
    }
}
     

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
