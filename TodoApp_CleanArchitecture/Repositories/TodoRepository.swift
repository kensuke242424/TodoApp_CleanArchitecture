//
//  TodoRepository.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import Foundation

// データの永続性を扱うリポジトリプロトコルや実装を含む
protocol ToDoRepository {
    func fetchToDos() -> [ToDo]
    func addOrUpdate(_ todo: ToDo)
    func delete(_ todo: ToDo)
}

class DatabaseToDoRepository: ToDoRepository {
    // ToDoRepositoryプロトコルに定義されたメソッドの実装
    func fetchToDos() -> [ToDo] {
        // 実際のデータの取得ロジックを記述する
        return [] // 仮の空の配列を返す例
    }

    func addOrUpdate(_ todo: ToDo) {
        // ToDoを追加または更新するロジックを記述する
    }

    func delete(_ todo: ToDo) {
        // ToDoを削除するロジックを記述する
    }
}
