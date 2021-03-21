//
//  Logo.swift
//  Dicee
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("diceeLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 150, alignment: .center)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
