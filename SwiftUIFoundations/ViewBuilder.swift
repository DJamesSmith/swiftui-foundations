//
//  ViewBuilder.swift
//  SwiftUIFoundations
//
//  Created by Dion James Smith on 16/10/25.
//

import SwiftUI

// MARK: - What is @ViewBuilder?
// ------------------------------------------------------
// @ViewBuilder is a SwiftUI result builder that lets you
// combine multiple child views into one return value.
// It’s what allows SwiftUI’s declarative syntax like:
//
//     VStack {
//         Text("Hello")
//         Text("World")
//     }
//
// Without @ViewBuilder, Swift wouldn’t allow
// multiple statements (views) in that closure.


// MARK: - Example WITHOUT @ViewBuilder
// ------------------------------------------------------
// This container accepts a closure returning ONE view only.
// If you try to return multiple views, you’ll get a compile-time error.
struct CustomContainerWithoutBuilder<Content: View>: View {
    let content: Content

    // ❌ No @ViewBuilder here
    init(content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 10) {
            Text("Container Without ViewBuilder")
                .font(.headline)
                .foregroundColor(.white)
            content
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.red.opacity(0.8)) // 🔴 Red background
        .cornerRadius(16)
        .shadow(radius: 5)
    }
}


// MARK: - Example WITH @ViewBuilder
// ------------------------------------------------------
// Here we use @ViewBuilder, which allows the closure to
// return multiple views directly without wrapping them manually.
struct CustomContainerWithBuilder<Content: View>: View {
    let content: Content

    // ✅ @ViewBuilder allows multiple views
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(spacing: 10) {
            Text("Container With ViewBuilder")
                .font(.headline)
                .foregroundColor(.white)
            content
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.green.opacity(0.8)) // 🟢 Green background
        .cornerRadius(16)
        .shadow(radius: 5)
    }
}


// MARK: - Demonstration View
// ------------------------------------------------------
struct ViewBuilderExample: View {
    var body: some View {
        VStack(spacing: 30) {

            // ❌ Uncommenting this will cause an error:
            /*
            CustomContainerWithoutBuilder {
                Text("Hello")
                Text("World") // ❌ Error: Multiple statements in closure
            }
            */

            // ✅ Works perfectly with @ViewBuilder
            CustomContainerWithBuilder {
                Text("Hello")
                    .font(.title3)
                Text("World")
                    .font(.title3)
            }

            // ✅ Works for the non-ViewBuilder version only
            // if you manually wrap your views inside a container.
            CustomContainerWithoutBuilder {
                VStack {
                    Text("Hello")
                        .font(.title3)
                    Text("World")
                        .font(.title3)
                }
            }
        }
        .padding(24)
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .padding()
    }
}


// MARK: - Preview
// ------------------------------------------------------
#Preview {
    ViewBuilderExample()
        .previewLayout(.sizeThatFits)
        .padding()
}


// MARK: - Summary
// ------------------------------------------------------
//
// 🧩 PURPOSE OF @ViewBuilder
// • Enables returning multiple child views in a closure.
// • Allows SwiftUI’s DSL-style syntax ({ ... }).
// • Combines multiple views into one unified result.
//
// ⚙️ IF YOU DON'T USE IT
// • You can only return one view from a closure.
// • You must wrap multiple views manually inside a container.
//
// 🎯 COMMON PLACES WHERE IT’S USED
// • View.body (implicitly uses @ViewBuilder)
// • VStack, HStack, ZStack initializers
// • Custom container or layout views you create.
//

/*
 What this file does:

 1. Shows two versions of a custom container (with and without @ViewBuilder).
 2. Demonstrates what fails when @ViewBuilder is missing.
 3. Contains clear inline explanations for each part.
 4. Has a working preview you can open in Xcode to see the difference visually.
 
 */
