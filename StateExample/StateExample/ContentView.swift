//
//  ContentView.swift
//  StateExample
//
//  Created by Keshav Kishore on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var zoomedIn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: zoomedIn ? [.orange, .pink] : [.blue, Color(.link), .white] , startPoint: .topLeading, endPoint: .bottomTrailing)
                
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image(systemName: "cloud.sun.rain.fill")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: zoomedIn ? .fill : .fit)
                        .frame(width: zoomedIn ? 400 : 50 , height: zoomedIn ? 400 : 50, alignment: .center)
                        .onTapGesture {
                            withAnimation {
                                self.zoomedIn.toggle()
                            }
                        }
                    Spacer()
                }
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
