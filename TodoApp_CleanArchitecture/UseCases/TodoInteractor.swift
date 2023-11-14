//
//  TodoInteractor.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import Foundation

// アプリケーションのビジネスロジックを含む層
// 外部のデータを取得、加工、操作する責務を持つ
class ToDoInteractor {
    private let repository: ToDoRepository

    init(repository: ToDoRepository) {
        self.repository = repository
    }

    func getAllTodos() -> [ToDo] {
        return repository.fetchToDos()
    }

    func saveToDo(_ todo: ToDo) {
        repository.addOrUpdate(todo)
    }

    func deleteToDo(_ todo: ToDo) {
        repository.delete(todo)
    }
}
