//
//  DDGAnnotation.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-09-25.
//

import SwiftUI

struct DDGAnnotation: View {
    
    var location: DDGLocation
    
    var body: some View {
        VStack {
            ZStack {
                MapBalloon()
                    .frame(width: 100, height: 70)
                    .foregroundColor(Color("AccentColor"))
                
                Image(uiImage: location.createSquareImage())
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .offset(y: -11)
                
                Text("99")
                    .font(.system(size: 11, weight: .bold))
                    .frame(width: 26, height: 18)
                    .background(Color.grubRed)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .offset(x: 20, y: -28)
            }
            
            Text(location.name)
                .font(.caption)
                .fontWeight(.semibold)
        }
    }
}

struct DDGAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        DDGAnnotation(location: DDGLocation(record: MockData.location))
    }
}
