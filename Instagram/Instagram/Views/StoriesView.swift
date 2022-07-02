//
//  StoriesView.swift
//  Instagram
//
//  Created by Keshav Kishore on 02/07/22.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                StoryView(imageName: "foo")
                ForEach(0...10, id: \.self){number in
                    StoryView(imageName: "foo")
                }
            }
        }
    }
}


struct StoryView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.blue)
            .cornerRadius(45)
            .padding(3)
        
        
        
        
    }
}
