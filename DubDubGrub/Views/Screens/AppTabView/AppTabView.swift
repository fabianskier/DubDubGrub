//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-09.
//

import SwiftUI

struct AppTabView: View {
    @StateObject private var viewModel = AppTabViewModel()
    
    init() { UITabBar.appearance().backgroundColor = UIColor.secondarySystemBackground }
    
    var body: some View {
        TabView {
            LocationMapView().tabItem{ Label("Map", systemImage: "map") }
            LocationListView().tabItem{ Label("Locations", systemImage: "building") }
            NavigationView { ProfileView() }.tabItem{ Label("Profile", systemImage: "person") }
        }
        .task {
            try? await CloudKitManager.shared.getUserRecord()
            viewModel.checkIfHasSeenOnboard()
        }
        .tint(Color("AccentColor"))
        .sheet(isPresented: $viewModel.isShowingOnboardView) {
            OnboardingView()
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
