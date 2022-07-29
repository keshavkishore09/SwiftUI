//
//  Models.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 29/07/22.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    var headerViewModel: HeaderViewModel = HeaderViewModel()
    var hourlyModel = HourlyModel()
    
}


class HeaderViewModel: ObservableObject {
    var location: String = "New York City, NY"
    var currentTemp: String =  "75°"
    var currentCondition = "Clear"
}


class HourlyModel: ObservableObject {
    var data: [HourData] = []
}



class HourData: ObservableObject {
    var temp = "55°"
    var hour = "1PM"
    var imageURL = ""
    
}
