//
//  Todo App.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 12/01/25.
//

import SwiftUI

struct Todo_App: View {

    @ObservedObject var todoList: TodoList = TodoList()

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(todoList.todos) { todo in
                        HStack {
                            Text(todo.task)
                            Spacer()
                            Image(systemName: "trash")
                                .foregroundStyle(.red)
                                .onTapGesture {
                                    todoList.deleteTodo(todo: todo)
                                }
                        }
                    }
                }
            }
                .navigationTitle("Todo")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            todoList.showAddTodoView.toggle()
                        } label: {
                            Text("Add Todo")
                        }
                    }
                }
                .sheet(isPresented: $todoList.showAddTodoView) {
                    AddTodoView(todoList: todoList)
                }
        }
    }
}

struct Todo: Identifiable, Equatable {
    var id = UUID()
    var task: String
}

class TodoList: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var showAddTodoView = false

    func addTodo(task: String) {
        todos.append(Todo(task: task))
    }

    func deleteTodo(todo: Todo) {
        if let index = todos.firstIndex(of: todo) {
            todos.remove(at: index)
        }
    }
}


struct Todo_App_View_Previews: PreviewProvider {
    static var previews: some View {
        Todo_App()
    }
}
