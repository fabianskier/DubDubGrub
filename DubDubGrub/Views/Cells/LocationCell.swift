//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-23.
//

import SwiftUI

struct LocationCell: View {
    
    var location: DDGLocation
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            GeometryReader { geometry in
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                    
                    HStack {
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                    }
                }
            }.frame(height: 80)
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(location: DDGLocation(record: MockData.location))
    }
}
