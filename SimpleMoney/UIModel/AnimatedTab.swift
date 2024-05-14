//
//  Tab.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 13/05/2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case note, settings

    var title: String {
        switch self {
        case .note:
            return "Note"
        case .settings:
            return "Settings"
        }
    }
}

struct AnimatedTab: Identifiable {
    var id: UUID = .init()
    var tab: Tab
}

struct AnimationTab: View {
    let animationName: String
    var isActiveTab: Bool
    var body: some View {
        LottieView(
            isAnimationPlaying: isActiveTab,
            animationName: animationName
        )
        .frame(width: 30, height: 30)
    }
}
