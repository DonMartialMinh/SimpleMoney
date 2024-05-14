//
//  SimpleMoneyApp.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 21/04/2024.
//

import SwiftUI

@main
struct SimpleMoneyApp: App {

    init() {
        let appearance = UINavigationBarAppearance()
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}
