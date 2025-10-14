//
//  WeatherView.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 14/10/25.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        
                }
                
                
                HStack {
                    VStack {
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("76°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                    }
                }

                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

// 40:34
