//
//  ContentView.swift
//  UserInterface
//
//  Created by Keshav Kishore on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: 200){
            ZStack {
                Color.blue
                HStack {
                Text("First")
                Text("Second")
                Text("Third")
            }
            }
            Spacer()
            
            ZStack {
                Text("Second Vertical Stack")
                
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
                .preferredColorScheme(.dark)
    }
}
