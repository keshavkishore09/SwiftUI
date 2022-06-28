//
//  ContentView.swift
//  UserInterface
//
//  Created by Keshav Kishore on 27/06/22.
//

import SwiftUI



struct HomeView {
    
    var data = (0...1000).map { val in
        "Grid Item \(val)"
    }
    
    var columns: [GridItem] = [GridItem(.flexible(minimum: 75, maximum: 150), spacing: 20, alignment: .center)]
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(data, id: \.self) { item in
                            ZStack {
                               Circle()
                                    .frame(width: 120, height: 100, alignment: .center)
                                    .foregroundColor(Color.purple)
                                Text(item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}



struct ActivityView {
    var body: some View {
        NavigationView {
            VStack {
                Color.green
            }
            .navigationTitle("Activity")
        }
    }
}




struct SettingView {
    var body: some View {
        NavigationView {
            VStack {
                Color.yellow
            }
            .navigationTitle("Settings")
        }
    }
}

struct ContentView: View {
    
    let data = ["Apple", "Oranges", "Grapes", "Apples"]
    var body: some View {
        TabView {
            HomeView()
                .body.tabItem {
                        Image(systemName: "house")
                       Text("Home")
                }
              ActivityView()
                .body.tabItem {
                    Image(systemName: "bell")
                    Text("Activity")
                }
               SettingView()
                .body.tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
}
    
    
    
    func didTapButton() {
        print("Hello")
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
