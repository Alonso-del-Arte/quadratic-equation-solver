//
//  ContentView.swift
//  QuadraticEquationSolver
//
//  Created by Alonso del Arte on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var a: Int = 1
    @State private var b: Int = -3
    @State private var c: Int = 2
    var body: some View {
        VStack {
            Text("Quadratic Equation Solver")
                .font(.largeTitle)
            HStack {
                Text("a = ")
                TextField("a", text: Binding(
                    get: {String(a)},
                    set: {a = Int($0) ?? 0}
                ))
                Text(", b = ")
                TextField("b", text: Binding(
                    get: {String(b)},
                    set: {b = Int($0) ?? 0}
                ))
                Text(", c = ")
                TextField("c", text: Binding(
                    get: {String(c)},
                    set: {c = Int($0) ?? 0}
                ))
            }
            HStack {
                Text("Roots of\n\(a)x^2 + \(b)x + \(c) are")
                    .font(.largeTitle)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
