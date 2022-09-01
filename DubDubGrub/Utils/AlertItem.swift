//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - MapView Errors
    static let unableToGetLocations = AlertItem(title: Text("Location Error"),
                                                message: Text("Unable to retrieve locations at this time.\nPlease try again."),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationRestricted   = AlertItem(title: Text("Location Restricted"),
                                                message: Text("Your location is restricted.\nThis may be due to parental controls."),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationDenied       = AlertItem(title: Text("Location Denied"),
                                                message: Text("Dub Dub Grub does not have permission to access your location. To change taht go to your phone's Settings > Dub Dub Grub > Location"),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationDisabled     = AlertItem(title: Text("Location Service Disabled"),
                                                message: Text("Your phone's location services are disabled. To change taht go to your phone's Settings > Privacy > Location Services"),
                                                dismissButton: .default(Text("Ok")))
    
    
    // MARK: - ProfileView Errors
    static let invalidProfile       = AlertItem(title: Text("Invalid Profile"),
                                                message: Text("All fields are required as well as a profile photo. Your bio mus be < 100 characters\nPlease try again.."),
                                                dismissButton: .default(Text("Ok")))
}
