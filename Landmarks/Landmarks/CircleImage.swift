//
//  CircleImage.swift
//  Landmarks
//
//  Created by William Mejia on 12/11/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Hotpot(2)")
            .clipShape(Circle())
            .overlay {
            Circle()
                    .stroke(.gray, lineWidth: 4)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
