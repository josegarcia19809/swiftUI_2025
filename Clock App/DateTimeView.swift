//
//  DateTimeView.swift
//  swiftUI_2025
//
//  Created by Jose Garcia on 03/03/25.
//

import SwiftUI

struct DateTimeView: View {
    let currenDate = Date()
    let formatter = DateFormatter()
    
    init() {
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
    }

    var body: some View {
        Text(formatter.string(from: currenDate))
        .font(.largeTitle)
    }
}

#Preview {
    DateTimeView()
}
