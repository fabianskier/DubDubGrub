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
}
