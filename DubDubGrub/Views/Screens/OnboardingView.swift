//
//  OnboardingView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-28.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isShowingOnboardingView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingOnboardingView = false
                } label: {
                    XDismissButton()
                }
                .padding()
            }
            
            Spacer()
            
            LogoView(frameWidth: 250)
                .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 32) {
                OnboardingInfoView(imageName: "building.2.crop.circle", title: "Restaurant Locations", description: "Find places to dine around the convention center")
                OnboardingInfoView(imageName: "checkmark.circle", title: "Check In", description: "Let other iOS Devs where you are")
                OnboardingInfoView(imageName: "person.2.circle", title: "Find Friends", description: "See where other iOS Devs are and join the party")
            }
            .padding(.horizontal, 40)
            Spacer()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isShowingOnboardingView: .constant(true))
    }
}

struct OnboardingInfoView: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(spacing: 26) {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color("AccentColor"))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .bold()
                Text(description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}
