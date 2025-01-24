//
//  StringsView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 25/12/24.
//

import SwiftUI

struct StringsView: View {
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    strings()
                }) {
                    Text("GO")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    StringsView()
}
