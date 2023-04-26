//
//  NavigationView.swift
//  Halftheisen
//
//  Created by Pereira, Afonso Miguel on 26/04/2023.
//

import SwiftUI

extension NavigationView {
    func hideBackButton() -> some View {
        self.modifier(HideBackButtonModifier())
    }
}

struct HideBackButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
    }
}

