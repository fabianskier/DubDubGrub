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
                                                message: Text("All fields are required as well as a profile photo. Your bio must be =< 100 characters\nPlease try again.."),
                                                dismissButton: .default(Text("Ok")))
    
    static let noUserRecord         = AlertItem(title: Text("No User Record"),
                                                message: Text("You must log into iCloud on your phone in order to utilize Dub Dub Grub's Profile. Please log in on your phone's settings screen."),
                                                dismissButton: .default(Text("Ok")))
    
    static let createProfileSuccess = AlertItem(title: Text("Profile Created Successfully"),
                                                message: Text("Your profile has successfully been created."),
                                                dismissButton: .default(Text("Ok")))
    
    static let createProfileFailure = AlertItem(title: Text("Failed to Create Profile"),
                                                message: Text("We were unable to create your profile at this time.\n Please try again later or contact customer support if this persists."),
                                                dismissButton: .default(Text("Ok")))
    
    static let unableToGetProfile   = AlertItem(title: Text("Unable To Retrieve Profile"),
                                                message: Text("We were unable to retrieve your profile at this time. Please check your internet connection and try again later or contact customer support if this persists."),
                                                dismissButton: .default(Text("Ok")))
    
    static let updateProfileSuccess = AlertItem(title: Text("Profile Update Success!"),
                                                message: Text("Your Dub Dub Grub profile was updated successfully."),
                                                dismissButton: .default(Text("Ok")))
    
    static let updateProfileFailure = AlertItem(title: Text("Profile Update Failed"),
                                                message: Text("We were unable to update your profile at this time.\n Please try again later."),
                                                dismissButton: .default(Text("Ok")))
    
    // MARK: - LocationDetailView Errors
    static let invalidPhoneNumber   = AlertItem(title: Text("Invalid Phone Number"),
                                                message: Text("The phone number for the locaton is invalid."),
                                                dismissButton: .default(Text("Ok")))
}
