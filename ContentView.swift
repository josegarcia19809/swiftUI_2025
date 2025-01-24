//
//  ContentView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 24/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var mensaje: String = "Saludos"
    var body: some View {
        ZStack {
            Color.peterRiver
                .ignoresSafeArea()
            VStack {
                Image("angela")
                    .resizable()
                    .frame(width: 220, height: 220)
                    .clipShape(Circle())
                Text(mensaje)
                    .foregroundStyle(Color.white)
                    .bold()
                    .font(.title)
                Button {
                    mensaje = helloWorld()
                } label: {
                    Text("Go")
                        .bold()
                        .frame(width: 150, height: 50)
                        .background(.wetAsphalt)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 350, height: 50)
                    .foregroundColor(.white)
                    .overlay(
                        HStack {
                            Image(systemName: "phone")
                            Text("123-456-789")
                                .font(.title2)
                        }
                    )
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
