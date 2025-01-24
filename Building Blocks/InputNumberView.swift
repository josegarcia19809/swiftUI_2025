//
//  InputNumberView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 29/12/24.
//

import SwiftUI

struct InputNumberView: View {
    @State private var input = "6"
    @State private var output = ""
    var body: some View {
        VStack {
            Text("Please enter an number")
                .font(.title2)
                .fontWeight(.bold)
            TextField("Input", text: $input)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.headline)
                .multilineTextAlignment(.center)
                
            
            Button(action: {
                let random = Int.random(in: 1...10)
                output = "The double is \(Int(input)! * random)"
            }) {
                Text("Go!")
                    .font(.title3)
                    .fontWeight(.heavy)
            }
            
            Text(output)
                .font(.title2)
                .foregroundStyle(Color.primary)
        }
    }
}

#Preview {
    InputNumberView()
}
