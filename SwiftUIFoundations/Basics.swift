//
//  Basics.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 13/10/25.
//

import SwiftUI

struct Basics: View {
    var body: some View {
//        HStack {
//            Text("Placeholder")
//            VStack {
//                Text("Hello, world!")
////                    .padding()
//                Text("Hello, world!")
////                    .padding()
//                
//            }
//            
//        }
// ------------------------------------------
//        ZStack {
//            Color(.blue)
//                .edgesIgnoringSafeArea(.all)
//        }
// ------------------------------------------
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.blue, .green, .yellow, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
//        }
// ------------------------------------------
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    Basics()
}


// 19:37
