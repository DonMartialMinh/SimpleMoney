//
//  LottieView.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 04/05/2024.
//

import UIKit
import SwiftUI
import Lottie


struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView

    var isAnimationPlaying: Bool
    let animationName: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let animationView = LottieAnimationView(name: animationName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if isAnimationPlaying {
            uiView.subviews.compactMap { $0 as? LottieAnimationView }.forEach { animationView in
                animationView.play()
            }
        } else {
            uiView.subviews.compactMap { $0 as? LottieAnimationView }.forEach { $0.stop() }
        }
    }
}
