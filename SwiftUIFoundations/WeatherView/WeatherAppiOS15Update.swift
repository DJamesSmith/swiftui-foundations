//
//  WeatherView.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 14/10/25.
//

import SwiftUI

struct WeatherAppiOS15Update: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)

            VStack {
                CityTextView(cityName: "Cupertino, CA")

                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)

                Spacer()

                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "wind.snow", temperature: 52)
                }

                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)

// Understanding foregroundStyle, symbolRenderingMode & foregroundColor
//            Image(systemName: imageName)
//                .renderingMode(.original)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
// ------------------------------------------
//            Image(systemName: imageName)
//                .symbolRenderingMode(.multicolor)
//                .symbolRenderingMode(.palette)
//                .resizable()
//                .foregroundColor(.red)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
// ------------------------------------------
//            Image(systemName: imageName)
////                .renderingMode(.original)
////                .symbolRenderingMode(.multicolor)
////                .symbolRenderingMode(.hierarchical) // black by default
//                .symbolRenderingMode(.palette)
//                .resizable()
////                .foregroundColor(.red)
//                .foregroundStyle(.mint, .orange, .green)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
// ------------------------------------------
//            Image(systemName: imageName)
//                .symbolRenderingMode(.palette)
//                .resizable()
//                .foregroundStyle(.mint, .orange, .green)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
// ------------------------------------------
//            Image(systemName: imageName)
//                .symbolRenderingMode(.hierarchical)
//                .resizable()
//                .foregroundColor(.pink)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 40, height: 40)
// ------------------------------------------
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundColor(.pink)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    ContentView()
}

// MARK: Duration complete:
// 1:28:30


// MARK: NOTE
// If it is unique to the screen we keep this in the same file, coymponents like:
// 1. WeatherDayView
// 2. BackgroundView
// 3. CityTextView
// 4. MainWeatherStatusView


// If it is going to be used all over your file or another screen in your app, put that into another file:
// Like WeatherBUtton


// Challenges
// 1. Build model and refactor HStack with an array
// 2. Get real data from a weatehr API
// 3. Build a TabBar that shows multiple cities
