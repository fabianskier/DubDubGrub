//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-23.
//

import SwiftUI

struct DDGButton: View {
    var title: String
    var color: Color = Color("AccentColor")
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct DDGButton_Previews: PreviewProvider {
    static var previews: some View {
        DDGButton(title: "Test Button")
    }
}
