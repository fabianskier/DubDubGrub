//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-10.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")
            HStack {
                AddressView(address: "983 Dr. Ricardo Odriozola")
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
            
            DescriptionView(text: "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: Color("AccentColor"), imageName: "location.fill")
                    }
                    Link(destination: URL(string: "https://www.apple.com")!, label: {
                        LocationActionButton(color: Color("AccentColor"), imageName: "network")
                    })
                    Button {
                        
                    } label: {
                        LocationActionButton(color: Color("AccentColor"), imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .red, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "Benjamin")
                    FirstNameAvatarView(firstName: "Diana")
                    FirstNameAvatarView(firstName: "Oscar")
                    FirstNameAvatarView(firstName: "Yoshi")
                }
            }
            
        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    
    let color: Color
    let imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct FirstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
        
    }
}

struct BannerImageView: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    var address: String
    
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
    }
}

struct DescriptionView: View {
    
    var text: String
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
    }
}
