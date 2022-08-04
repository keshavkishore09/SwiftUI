//
//  DailyView.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 31/07/22.
//

import SwiftUI

struct DailyView: View {
    @EnvironmentObject var viewModel: WeatherViewModel
    var body: some View {
        VStack {
            // ViewModel.dailyViewModel.data
            ForEach(0...7, id: \.self) { num in
                DayRowView(model: DayData())
                    .padding()
            }
        }
    }
}


struct DayRowView: View {
    var model: DayData
    var body: some View {
        HStack {
            Text(model.day)
                .bold()
                .font(.system(size: 26))
                .foregroundColor(.white)
            Spacer()
            
            VStack {
                Text("H: \(model.high)")
                    .foregroundColor(.white)
                Text("L: \(model.low)")
                    .foregroundColor(.white)
            }
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
