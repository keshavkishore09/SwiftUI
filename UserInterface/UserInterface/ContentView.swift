//
//  ContentView.swift
//  UserInterface
//
//  Created by Keshav Kishore on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let data = ["Apple", "Oranges", "Grapes", "Apples"]
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20 ) {
                        ForEach(0...100, id: \.self){num in
                            Text("Label \(num)")
                        }
                    }
                }
                List(data, id: \.self) { fruit in
                    Text(fruit)
                }
                NavigationLink(destination: Text("Second View").navigationTitle("Second"), label: {
                    ButtonContent(title: "Do Something")
                })
                .navigationTitle("Home")
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
