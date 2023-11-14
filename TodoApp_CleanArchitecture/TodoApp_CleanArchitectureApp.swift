//
//  TodoApp_CleanArchitectureApp.swift
//  TodoApp_CleanArchitecture
//
//  Created by Kensuke Nakagawa on 2023/11/14.
//

import SwiftUI

@main
struct TodoApp_CleanArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            /* 
             各層のオブジェクトを直接作成せず、外部から依存関係を注入する
             この手法を依存性の注入（Dependency Injection）と呼ぶ
             これにより、各層が疎結合になり、単体テストや変更の容易さが向上する。
             また、各層の責務が明確に分かれるため、コードの保守性も向上する。
            */

            // 具体的なToDoRepositoryのインスタンスを作成
            let repository = DatabaseToDoRepository()
            // ToDoInteractorのインスタンスを作成し、repositoryを渡す
            let interactor = ToDoInteractor(repository: repository)
            // ToDoViewModelのインスタンスを作成し、interactorを渡す
            let viewModel = ToDoViewModel(interactor: interactor)

            ContentView(viewModel: viewModel)
        }
    }
}
