//
//  View+Extension.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-23.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
    
    func embedInScrollView() -> some View {
        GeometryReader { geometry in
            ScrollView {
                self.frame(minHeight: geometry.size.height, maxHeight: .infinity)
            }
        }
    }
    
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
