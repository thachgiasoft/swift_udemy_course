//
//  SwiftUIView.swift
//  Shin Card
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct CapsuleItem: View {
    let text: String
    let image: String
    let color: Color
    
    var body: some View {
        Capsule()
            .fill(color)
            .frame(height: 40, alignment: .center)
            .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 6, x: 6, y: 6)
            .shadow(color: Color.init(red: 1, green: 1, blue: 1, opacity: 0.1), radius: 6, x: -6, y: -6)
            .overlay(
                HStack {
                    Image(systemName: image).foregroundColor(.white)
                    Text(text).foregroundColor(Color.white)
                }
        )
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleItem(text: "test", image: "phone.fill", color: .red).previewLayout(.sizeThatFits)
    }
}
