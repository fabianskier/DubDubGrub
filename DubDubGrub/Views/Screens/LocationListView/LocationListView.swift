//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-09.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var locationManager: LocationManager
    @StateObject private var viewModel = LocationListViewModel()
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations) { location in
                    NavigationLink(destination: viewModel.createLocationDetailView(for: location, in: dynamicTypeSize)) {
                        LocationCell(location: location, profiles: viewModel.checkedInProfiles[location.id, default: []])
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel(Text(viewModel.createVoiceOverSummary(for: location)))
                    }
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("Grub Spots")
                .onAppear { viewModel.getCheckedInProfilesDictionary() }
                .alert(item: $viewModel.alertItem, content: { $0.alert })
        }
        .navigationViewStyle(.stack)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView().environmentObject(LocationManager())
    }
}
