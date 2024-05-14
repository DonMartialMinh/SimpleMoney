//
//  View+SetUpTab.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 13/05/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func setUpTab(with tab: Tab) -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
            .tag(tab)
            .toolbar(.hidden, for: .tabBar)
    }
}
