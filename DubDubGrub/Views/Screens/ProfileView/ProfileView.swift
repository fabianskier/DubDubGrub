//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-09.
//

import SwiftUI
import CloudKit

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    NameBackgroundView()
                    
                    HStack(spacing: 16) {
                        ZStack {
                            AvatarView(image: viewModel.avatar, size: 84)
                            EditImageView()
                        }
                        .accessibilityElement(children: .ignore)
                        .accessibilityAddTraits(.isButton)
                        .accessibilityLabel(Text("Profile Photo"))
                        .accessibilityHint(Text("Opens the iPhone's photo picker"))
                        .padding(.leading, 12)
                        .onTapGesture { viewModel.isShowingPhotoPicker = true }
                        
                        VStack(spacing: 1) {
                            TextField("First Name", text: $viewModel.firstName).profileNameStyle()
                            TextField("Last Name", text: $viewModel.lastName).profileNameStyle()
                            TextField("Company Name", text: $viewModel.companyName)
                        }
                        .padding(.trailing, 16)
                    }
                    .padding()
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        CharacterRemainView(currentCount: viewModel.bio.count)
                            .accessibilityAddTraits(.isHeader)
                        Spacer()
                        if viewModel.isCheckedIn {
                            Button {
                                viewModel.checkOut()
                            } label: {
                                Label("Check Out", systemImage: "mappin.and.ellipse")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .frame(height: 28)
                                    .background(Color.grubRed)
                                    .cornerRadius(8)
                            }
                            .accessibilityLabel(Text("Check out of current location"))
                        }
                    }
                    
                    
                    TextEditor(text: $viewModel.bio)
                        .focused($dismissKeyboard)
                        .toolbar {
                            ToolbarItem(placement: .keyboard) {
                                HStack {
                                    Spacer()
                                    Button {
                                        dismissKeyboard.toggle()
                                    } label: {
                                        Image(systemName: "keyboard.chevron.compact.down")
                                            .foregroundColor(Color("AccentColor"))
                                    }
                                }
                            }
                        }
                        .frame(height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.secondary, lineWidth: 1))
                        .accessibilityLabel(Text("Bio, \(viewModel.bio)"))
                        .accessibilityHint(Text("This TextField is for your bio and has a 100 character maximum."))
                    
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                Button {
                    viewModel.profileContext == .create ? viewModel.createProfile() : viewModel.updateProfile()
                } label: {
                    DDGButton(title: viewModel.profileContext == .create ? "Create Profile" : "Update Profile")
                }
                .padding(.bottom)
            }
            if viewModel.isLoading { LoadingView() }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(DeviceTypes.isiPhone8Standard ? .inline : .automatic)
        .onAppear{
            viewModel.getProfile()
            viewModel.getCheckedInStatus()
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        .sheet(isPresented: $viewModel.isShowingPhotoPicker) {
            PhotoPicker(image: $viewModel.avatar)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
        
    }
}

struct NameBackgroundView: View {
    var body: some View {
        Color(uiColor: .secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImageView: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct CharacterRemainView: View {
    var currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? Color("AccentColor") : Color(uiColor: .systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
