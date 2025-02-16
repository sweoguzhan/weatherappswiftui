//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Oguzhan Cengel.
//


import SwiftUI


struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}


struct WeatherButton_Previews: PreviewProvider {
    static var previews: some View {
        WeatherButton(title: "Default Title",
                      textColor: .white,
                      backgroundColor: .blue)
    }
}
