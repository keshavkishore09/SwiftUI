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
                        .frame(width: zoomedIn ? 400 : 100 , height: zoomedIn ? 400 : 100, alignment: .center)
                    Spacer()
                    ButtonView(zoomedIn: $zoomedIn)
                }
            }
            
        }
        
    }
    
}


struct ButtonView: View {
    
    @Binding var zoomedIn: Bool
    
    
    init(zoomedIn: Binding<Bool>) {
        _zoomedIn = zoomedIn
    }
    var body: some View {
        Button {
            withAnimation {
                zoomedIn.toggle()
            }
        } label: {
            Text(zoomedIn ? "Zoom Out" : "Zoom In")
                .bold()
                .frame(width: 230, height: 50, alignment: .center)
                .background(Color(.white))
                .cornerRadius(8)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
