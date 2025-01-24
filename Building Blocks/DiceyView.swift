//
//  DiceyView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 30/12/24.
//

import SwiftUI

struct DiceyView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        VStack {
            Text("Dicey")
                .foregroundStyle(Color.cyan)
                .bold()
                .font(.system(size: 50))
                .fontWeight(.black)
            Spacer()
            
            Button(action: {
                leftDiceNumber = Int.random(in: 1...6)
                rightDiceNumber = Int.random(in: 1...6)
            }, label: {
                Text("Click me to roll the dice!!!")
                    .font(.title)
            })
            
            Spacer()
            
            HStack {
                Image("dice\(leftDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
                Image("dice\(rightDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            .offset(y: -200)
            .padding()
        }
    }
}

#Preview {
    DiceyView()
}
