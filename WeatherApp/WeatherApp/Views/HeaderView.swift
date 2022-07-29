//
//  HeaderView.swift
//  WeatherApp
//
//  Created by Keshav Kishore on 29/07/22.
//

import SwiftUI

struct HeaderView: View {
    var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack(spacing: -15) {
            Text(viewModel.headerViewModel.location)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 36))
                .padding()
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 220, alignment: .center)
            
            
            Text(viewModel.headerViewModel.currentTemp)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 90))
                .padding()
            
            
            Text(viewModel.headerViewModel.currentCondition)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: 45))
                .padding()
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .preferredColorScheme(.dark)
            HeaderView()
        }
    }
}
