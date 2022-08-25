//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-09.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations) { location in
                    NavigationLink(destination: LocationDetailView(location: location)) {
                        LocationCell(location: location)
                    }
                }
            }.listStyle(PlainListStyle())
            .navigationTitle("Grub Spots")
        }
        .navigationViewStyle(.stack)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
