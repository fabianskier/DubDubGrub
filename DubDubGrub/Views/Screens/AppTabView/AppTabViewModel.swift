//
//  AppTabViewModel.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-09-25.
//

import SwiftUI

extension AppTabView {
    final class AppTabViewModel: ObservableObject {
        @Published var isShowingOnboardView = false
        @AppStorage("hasSeenOnboardView") var hasSeenOnboardView = false {
            didSet { isShowingOnboardView = hasSeenOnboardView }
        }
        
        let kHasSeenOnboardView = "hasSeenOnboardView"
        
        func checkIfHasSeenOnboard() {
            if !hasSeenOnboardView { hasSeenOnboardView   = true }
        }
    }
}
