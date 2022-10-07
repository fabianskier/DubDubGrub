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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations) { location in
                    NavigationLink(destination: LocationDetailView(viewModel: LocationDetailViewModel(location: location))) {
                        LocationCell(location: location,
                                     profiles: viewModel.checkedInProfiles[location.id, default: []])
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel(Text(viewModel.createVoiceOverSummary(for: location)))
                    }
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("Grub Spots")
                .onAppear { viewModel.getCheckedInProfilesDictionary() }
        }
        .navigationViewStyle(.stack)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView().environmentObject(LocationManager())
    }
}
