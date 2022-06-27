//
//  ContentView.swift
//  UserInterface
//
//  Created by Keshav Kishore on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "sun.max.fill")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: .center)
                .padding()
            Image("test")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 100, alignment: .center)
                .padding()
            Button {
                print("Button Pressed")
                didTapButton()
            } label: {
                ButtonContent(title: "Button Do Something")
            }

        }
    }
    
    
    func didTapButton() {
        
    }
}



struct ButtonContent: View {
    
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 24))
            .bold()
            .frame(width: 220, height: 50, alignment: .center)
            .background(Color.pink)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
                .preferredColorScheme(.dark)
    }
}
