//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-09.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.locations) { location in
                    NavigationLink(destination: LocationDetailView(viewModel: LocationDetailViewModel(location: location))) {
                        LocationCell(location: location)
                    }
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("Grub Spots")
                .onAppear {
                    CloudKitManager.shared.getCheckedInProfilesDictionary { result in
                        switch result {
                        case .success(let checkedInProfiles):
                            print(checkedInProfiles)
                        case .failure(let failure):
                            print("Error getting back dictionary")
                        }
                    }
                }
        }
        .navigationViewStyle(.stack)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView().environmentObject(LocationManager())
    }
}
