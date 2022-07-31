//
//  ContentView.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 28/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color(.link), .pink] ), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    HeaderView()
                    HourlyView()
                    DailyView()
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
