//
//  ContentView.swift
//  UserInterface
//
//  Created by Keshav Kishore on 27/06/22.
//

import SwiftUI



struct ActivityView {
    
    var data = (0...1000).map { val in
        "Grid Item \(val)"
    }
    
    var columns: [GridItem] = [GridItem(.flexible(minimum: 75, maximum: 150), spacing: 20, alignment: .center), GridItem(.flexible(minimum: 75, maximum: 150), spacing: 20, alignment: .center), GridItem(.flexible(minimum: 75, maximum: 150), spacing: 20, alignment: .center)]
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
                            }.padding()
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}



struct HomeView {
    @State var text = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Your Info"), footer: Text("Enter your info to create the account")) {
                        TextField("Email Address", text: $text)
                        SecureField("Password", text: $text)
                              
                    }
                    
                    
                    Section(header: Text("Your Passsword"), footer: Text("Enter your Password to create the account")) {
                        SecureField("Password", text: $text)
                        SecureField("Confirm Password", text: $text)
                    }
                }
                
               TextField("Email Address", text: $text)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                
                SecureField("Password", text: $text)
                     .padding()
                     .background(Color(.secondarySystemBackground))
                     .cornerRadius(10)
                 Spacer()
                
            }
            .padding()
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
