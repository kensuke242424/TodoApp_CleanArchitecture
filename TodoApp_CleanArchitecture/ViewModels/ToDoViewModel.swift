//
//  ToDoViewModel.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import SwiftUI

// Viewとユーザーのインタラクションを処理
class ToDoViewModel: ObservableObject {
    @Published var todos: [ToDo] = []
    private let interactor: ToDoInteractor

    init(interactor: ToDoInteractor) {
        self.interactor = interactor
        fetchTodos()
    }

    func fetchTodos() {
        todos = interactor.getAllTodos()
    }

    func addOrUpdateToDo(_ todo: ToDo) {
        interactor.saveToDo(todo)
        fetchTodos()
    }

    func deleteTodo(_ todo: ToDo) {
        interactor.deleteToDo(todo)
    }
}

