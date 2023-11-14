# TodoApp_CleanArchitecture
Todo App クリーンアーキテクチャでの実装サンプル

<br>

## ディレクトリ構成図

ToDoApp/  
├── Models/              // エンティティやデータモデル  
│   └── ToDo.swift  
│  
├── Repositories/        // データの永続性を扱うリポジトリ  
│   └── ToDoRepository.swift  
│  
├── UseCases/            // ユースケース（アプリケーションのビジネスロジック）  
│   └── ToDoInteractor.swift  
│  
├── ViewModels/          // SwiftUIのビューモデル  
│   └── ToDoViewModel.swift  
│  
└── Views/               // SwiftUIのビュー  
    └── ContentView.swift
