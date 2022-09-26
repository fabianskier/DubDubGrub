//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-24.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
    var selectedLocation: DDGLocation?
}
