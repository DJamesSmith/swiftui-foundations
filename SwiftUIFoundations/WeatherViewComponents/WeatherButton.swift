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
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

// If it is unique to the screen we keep this in the same file, components like:
// 1.
// 2.
// 3.


// If it is going to be used all over your file or another screen in your app, put that into another file:
// Like WeatherBUtton
