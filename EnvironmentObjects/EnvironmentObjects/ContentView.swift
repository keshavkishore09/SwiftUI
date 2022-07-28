//
//  ContentView.swift
//  EnvironmentObjects
//
//  Created by Keshav Kishore on 28/07/22.
//

import SwiftUI



class ScoreModel: ObservableObject {
    @Published var score:Int = 0
    
}

struct ContentView: View {
    @EnvironmentObject var model: ScoreModel
    var body: some View {
        NavigationView {
            VStack {
                ScoreView()
                Button {
                    model.score += 1
                } label: {
                    Text("Increase")
                }

            }
            .navigationTitle("Score")
        }
    }
}


struct ScoreView: View {
    @EnvironmentObject var model: ScoreModel
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.blue)
                .frame(width: 250, height: 250, alignment: .center)
             Text("Score: \(model.score)")
                .font(.system(size: 42))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
