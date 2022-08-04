//
//  HourlyView.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 29/07/22.
//

import SwiftUI

struct HourlyView: View {
    @EnvironmentObject var viewModel: WeatherViewModel
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                // viewModel.hourlyData    
                ForEach(0...24, id: \.self) { _ in
                    HourView(model: HourData())
                }
            }
        }
    }
}


struct HourView : View {
    var model = HourData()
    var body: some View {
        VStack {
            //image, temp, hour
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35, alignment: .center)
            
            Text(model.temp)
                .bold()
                .foregroundColor(.white)
            
            Text(model.hour)
                .bold()
                .foregroundColor(.white)
            
        }
        .padding()
    }
    
}

struct HourlyView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyView()
            .preferredColorScheme(.dark)
    }
}
