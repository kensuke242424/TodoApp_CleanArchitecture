//
//  UnitTests.swift
//  UnitTests
//
//  Created by Kensuke Nakagawa on 2023/11/15.
//

import XCTest
@testable import TodoApp_CleanArchitecture

class ToDoInteractorUnitTests: XCTestCase {

    override func setUpWithError() throws {
        // ここにセットアップコードを入力します。このメソッドは、クラス内の各テストメソッドを呼び出す前に呼び出されます。
    }
    override func tearDownWithError() throws {
        // ここにティアダウンコードを配置します。このメソッドは、クラス内の各テストメソッドの呼び出し後に呼び出されます。
        print("＝＝＝＝テストメソッド実行＝＝＝＝")
    }
    func testExample() throws {
        // これは機能テストケースの例です。
        // XCTAssertおよび関連する関数を使用して、テストで正しい結果が生成されることを確認します。
        // XCTest用に作成したテストには、throwsおよびasyncとしてアノテーションを付けることができます。
        //テストスローにマークを付けて、テストでキャッチされないエラーが発生したときに予期しないエラーが発生するようにします。
        //テストを非同期としてマークして、非同期コードが完了するのを待つことができるようにします。その後、アサーションを使用して結果を確認します。
    }

    func testFetchToDos() {
        // モックのToDoRepositoryを作成
        let mockRepository = MockToDoRepository()
        // モックのToDoリストを設定
        let expectedToDos = [ToDo]()
        mockRepository.mockToDos = expectedToDos

        // ToDoInteractorをモックのRepositoryで初期化
        let interactor = ToDoInteractor(repository: mockRepository)

        // ToDoを取得
        let actualToDos = interactor.getAllTodos()

        // 取得したToDoリストが期待通りであるか検証
        XCTAssertEqual(actualToDos, expectedToDos)
        /*
         XCTAssertEqual(X, Y, format...)
         XとYを比較し、同じであることをチェックする。
         int等のスカラー型や構造体などに使用する
         */
    }

    func testAddToDos() {
        let mockRepository = MockToDoRepository()
        let interactor = ToDoInteractor(repository: mockRepository)
        // 追加するToDoアイテムの作成
        let todoToAdd = ToDo(id: UUID(), title: "test", isCompleted: false)

        interactor.saveToDo(todoToAdd)

        // ToDoRepository内の追加処理が呼ばれたかどうかを検証するためのモックメソッドを使用
        XCTAssertTrue(mockRepository.addOrUpdateCalled)
        XCTAssertEqual(mockRepository.todoAddedOrUpdated, todoToAdd)
        /*
         XCTAssertTrue(expression, format...)
         expression が YES であることをチェックする
         */
    }
}
