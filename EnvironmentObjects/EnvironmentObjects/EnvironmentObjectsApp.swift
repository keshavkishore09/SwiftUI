//
//  EnvironmentObjectsApp.swift
//  EnvironmentObjects
//
//  Created by Keshav Kishore on 28/07/22.
//

import SwiftUI

@main
struct EnvironmentObjectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ScoreModel())
        }
    }
}
