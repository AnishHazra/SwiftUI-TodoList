//
//  Model.swift
//  TodoList
//
//  Created by Anish Hazra on 02/02/25.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(
        id: String = UUID().uuidString,
        title: String,
        isCompleted: Bool
    ){
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(
            id: id,
            title: title,
            isCompleted: !isCompleted
        )
    }
}
