//
//  TodoListApp.swift
//  TodoList
//
//  Created by Anish Hazra on 02/02/25.
//

import SwiftUI

/*
MVVM Architecture
 
 Model - data point
 View - UI
 View Model - Manages models for view
 
*/

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
