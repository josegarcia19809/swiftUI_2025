//
//  Calories App.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 14/01/25.
//

import SwiftUI

struct Calories_App: View {
    
    @ObservedObject var foodList: CaloriesTracker = CaloriesTracker()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(foodList.foods) { food in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(String(food.calories) + " calories")
                                Text("Food Eaten: \(food.foodName)")
                            }
                            Spacer()
                            Image(systemName: "trash")
                                .foregroundStyle(.red)
                                .onTapGesture {
                                    foodList.deleteFood(food: food)
                                }
                        }
                    }
                }
            }
            .navigationTitle("Calories Foods")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        foodList.showAddCalorieView.toggle()
                    } label: {
                        Text("Add food")
                    }
                }
            }
            .sheet(isPresented: $foodList.showAddCalorieView) {
                AddCalorieView(foodList: foodList)
            }
        }
    }
}

struct CalorieFood: Identifiable, Equatable {
    var id = UUID()
    var calories: Int
    var foodName: String
}

class CaloriesTracker: ObservableObject {
    @Published var foods: [CalorieFood] = []
    @Published var showAddCalorieView = false
    
    func addFood(food: String, calories: Int) {
        foods.append(CalorieFood(calories: calories, foodName: food))
    }
    
    func deleteFood(food: CalorieFood) {
        if let index = foods.firstIndex(of: food) {
            foods.remove(at: index)
        }
    }
}

struct Calories_App_View_Previews: PreviewProvider {
    static var previews: some View {
        Calories_App()
    }
}
