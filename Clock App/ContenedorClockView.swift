//
//  ContenedorClockView.swift
//  swiftUI_2025
//
//  Created by Jose Garcia on 03/03/25.
//

import SwiftUI

struct ContenedorClockView: View {
    var body: some View {
        TabView {
            ClockApp()
            .tabItem {
                Image(systemName: "stopwatch")
                Text("Stopwatch")
            }
            
        }
    }
}

#Preview {
    ContenedorClockView()
}
