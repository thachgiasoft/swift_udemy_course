//
//  Button.swift
//  Dicee
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct BaseButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal, 40)
        }
        .background(Color.red)
        .cornerRadius(10)
    }
}


struct Button_Previews: PreviewProvider {
    static var previews: some View {
        BaseButton(label: "Test") {
            print("One!")
        }
    }
}
