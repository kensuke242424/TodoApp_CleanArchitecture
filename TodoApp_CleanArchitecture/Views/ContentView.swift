//
//  ContentView.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel: ToDoViewModel

    init(viewModel: ToDoViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.todos) { todo in
                    Text(todo.title)
                }
                .onDelete(perform: deleteToDo)
            }
            .navigationTitle("To-Do List")
        }
    }

    private func deleteToDo(at offsets: IndexSet) {
        offsets.forEach { index in
            let todo = viewModel.todos[index]
//            viewModel.deleteToDo(todo)
        }
    }

    private var addButton: some View {
        Button(action: {
            // Show add ToDo view
            // Implement logic to add ToDo item
        }) {
            Image(systemName: "plus")
        }
    }
}

//#Preview {
//    ContentView(viewModel: ToDoViewModel(interactor: ))
//}
