//
//  LogoView.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-28.
//

import SwiftUI

struct LogoView: View {
    var frameWidth: CGFloat
    
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(width: frameWidth)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(frameWidth: 250)
    }
}
