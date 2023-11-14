//
//  ToDo.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import Foundation

// アプリケーションで使用されるエンティティやデータモデル
struct ToDo: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
}
