//
//  Models.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 29/07/22.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var headerViewModel: HeaderViewModel = HeaderViewModel()
    @Published var hourlyData: [HourData] = []
    @Published var dailyData: [DayData] = []
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        // Get data and location Info
    }
    
}


// Mark:- Header

class HeaderViewModel: ObservableObject {
    var location: String = "New York City, NY"
    var currentTemp: String =  "75°"
    var currentCondition = "Clear"
}


// Mark:- Hourly
class HourData: ObservableObject {
    var temp = "55°"
    var hour = "1PM"
    var imageURL = ""
    
}


// Mark:- Daily

class DayData: ObservableObject {
    var day = "Monday"
    var high = "77°F"
    var low = "67°F"
    
}
