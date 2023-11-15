//
//  MockToDoRepository.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/15.
//

import Foundation
@testable import TodoApp_CleanArchitecture

// ToDoRepositoryのモック（テスト用）
class MockToDoRepository: ToDoRepository {
    var mockToDos: [ToDo] = []
    var addOrUpdateCalled = false
    var todoAddedOrUpdated: ToDo?

    func fetchToDos() -> [ToDo] {
        return mockToDos
    }

    func addOrUpdate(_ todo: ToDo) {
        addOrUpdateCalled = true
        todoAddedOrUpdated = todo
    }

    func delete(_ todo: ToDo) {
        // 削除のモックなど、必要ならば他のメソッドも追加
    }
}
