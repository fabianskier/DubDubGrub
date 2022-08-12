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
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            HStack {
                Label("983 Dr. Ricardo Odriozola", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                
                Spacer()
            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
            
            Text("Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
                .lineLimit(3)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
            
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
                    FirstNameAvatarView(firstName: "Oscar")
                    FirstNameAvatarView(firstName: "Fabian")
                    FirstNameAvatarView(firstName: "Cristaldo")
                    FirstNameAvatarView(firstName: "Guzman")
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
