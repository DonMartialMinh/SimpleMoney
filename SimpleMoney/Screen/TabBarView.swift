//
//  ContentView.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 21/04/2024.
//

import SwiftUI
import Lottie

struct TabBarView: View {
    @State private var activeTab: Tab = .note
    @State private var allTab: [AnimatedTab] = Tab.allCases.map { tab in
            .init(tab: tab)
    }

    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $activeTab) {
                NoteView()
                .setUpTab(with: .note)

                SettingsView()
                .setUpTab(with: .settings)
            }
            customTab()
        }
    }

    @ViewBuilder
    func customTab() -> some View {
        HStack(spacing: 0) {
            ForEach($allTab) { $animatedTab in
                VStack(spacing: 4) {
                    AnimationTab(
                        animationName: animatedTab.tab.rawValue,
                        isActiveTab: activeTab == animatedTab.tab
                    ).opacity(
                        activeTab == animatedTab.tab ? 1 : 0.3
                    )
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 15)
                .padding(.bottom, 10)
                .contentShape(.rect)
                .onTapGesture {
                    activeTab = animatedTab.tab
                }
            }
        }.background(.bar)
    }
}

#Preview {
    TabBarView()
}
