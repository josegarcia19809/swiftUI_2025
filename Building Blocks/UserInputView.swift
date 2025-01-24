//
//  UserInputView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 29/12/24.
//

import SwiftUI

struct UserInputView: View {
    @State private var input = "swift"
    @State private var output = ""
    var body: some View {
        VStack {
            Text("Please enter an input")
                .font(.title2)
                .fontWeight(.bold)
            TextField("Input", text: $input)
                .padding()
                .textFieldStyle(.roundedBorder)
                .font(.headline)
                .multilineTextAlignment(.center)
            
            
            Button(action: {
                output = primeraUltimaLetras(lenguaje: input)
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
    UserInputView()
}
