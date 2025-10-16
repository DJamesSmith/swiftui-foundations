//
//  WeatherButton.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 15/10/25.
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
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}

// If it is unique to the screen we keep this in the same file, coymponents like:
// 1. WeatherDayView
// 2. BackgroundView
// 3. CityTextView
// 4. MainWeatherStatusView


// If it is going to be used all over your file or another screen in your app, put that into another file:
// Like WeatherBUtton
