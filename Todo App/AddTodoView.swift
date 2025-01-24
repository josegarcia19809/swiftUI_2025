//
//  AddTodoView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 12/01/25.
//

import SwiftUI

struct AddTodoView: View {
    @State private var task = ""
    @ObservedObject var todoList: TodoList
    @State private var displayText = "What would you like to add?"

    var body: some View {
        NavigationView {
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 300, height: 50)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .foregroundStyle(Color.white)
                    .overlay(
                            TextField(displayText, text: $task)
                                .multilineTextAlignment(.center)
                    )
                Button {
                    if (task != "") {
                        todoList.addTodo(task: task)
                        todoList.showAddTodoView = false
                    } else {
                        displayText = "Enter some text first!"
                    }
                } label: {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 300, height: 50)
                        .foregroundStyle(.blue)
                        .overlay(
                                Text("Add Todo")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                        )
                }
                    .padding()
                Spacer()

            }
                .padding(.top, 35)
                .navigationTitle("Add a note 🗒️")
        }
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView(todoList: TodoList())
    }
}
