//
//  CircleImage.swift
//  Landmarks
//
//  Created by JioCLLIC on 6/22/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("JoshTree")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
