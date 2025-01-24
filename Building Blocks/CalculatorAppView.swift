//
//  CalculatorAppView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 11/01/25.
//

import SwiftUI

struct CalculatorAppView: View {
    
    @State private var firstNumber: String = ""
    @State private var secondNumber: String = ""
    @State private var operation: String = ""
    @State private var result: String = "0,00"
    
    let calculator = Calculator()
    
    var body: some View {
        VStack(spacing: 20){
            
            CustomTextField(title: "First Number", text: $firstNumber)
            
            Picker("Picker", selection: $operation){
                Text("+").tag("+")
                Text("-").tag("-")
                Text("*").tag("*")
                Text("/").tag("/")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            CustomTextField(title: "Second Number", text: $secondNumber)
            
            Text(result)
                .font(.title)
                .foregroundStyle(Color(.mint))
            
            Button{
                self.result = calculator.calculate(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
            } label: {
                Text("Calculate")
                    .padding()
                    .foregroundStyle(Color(.white))
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

class Calculator {
    func calculate(firstNumber : String, secondNumber: String, operation: String) -> String{
        let num1 = Int(firstNumber) ?? 0
        let num2 = Int(secondNumber) ?? 0
        
        switch operation {
        case "+":
            return String(num1 + num2)
        case "-":
            return String(num1 - num2)
        case "*":
            return String(num1 * num2)
        case "/":
            return String(num1 / num2)
        default:
            return "Invalid"
        }
    }
}

#Preview {
    CalculatorAppView()
}
