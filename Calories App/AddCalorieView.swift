//
//  AddCalorieView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 14/01/25.
//

import SwiftUI

struct AddCalorieView: View {
    @State private var food = ""
    @State private var calories = 0
    @ObservedObject var foodList: CaloriesTracker
    @State private var displayText = "What would you like to add?"
    
    var body: some View {
        NavigationView {
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 300, height: 50)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .foregroundStyle(.white)
                    .overlay {
                        TextField(displayText, text: $food)
                            .multilineTextAlignment(.center)
                    }
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 300, height: 50)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .foregroundStyle(.white)
                    .overlay {
                        TextField("Enter calories", text: Binding(
                            get: { String(calories) }, // Convierte Int a String
                            set: { newValue in
                                if let value = Int(newValue) { // Convierte String a Int
                                    calories = value
                                }
                            }
                        ))
                        .multilineTextAlignment(.center)
                    }
                
                Button {
                    if (food != "") {
                        foodList.addFood(food: food, calories: calories)
                        foodList.showAddCalorieView = false
                    } else {
                        displayText = "Enter some text first!"
                    }
                } label: {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50)
                        .foregroundStyle(.blue)
                        .overlay {
                            Text("Add Food")
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
                        }
                }
                .padding()
                Spacer()
            }
            .padding(.top, 35)
            .navigationTitle("Add a food and calories")
        }
    }
}


struct AddCalories_View_Previews: PreviewProvider {
    static var previews: some View {
        AddCalorieView(foodList: CaloriesTracker())
    }
}
