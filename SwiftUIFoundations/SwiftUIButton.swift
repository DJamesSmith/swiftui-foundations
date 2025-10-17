//
//  SwiftUIButton.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 16/10/25.
//

import SwiftUI

struct SwiftUIButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .bold()
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .cornerRadius(10)
            
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .cornerRadius(10)
        }
        .foregroundColor(textColor)
//        .font(.system(size: 20, weight: .bold, design: .default))
    }
}

#Preview {
    SwiftUIButton(title: "SwiftUI Button", textColor: .white, backgroundColor: .blue)
}
