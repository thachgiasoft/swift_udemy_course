//
//  DiceHolder.swift
//  Dicee
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct DiceHolder: View {
    let diceOne: Int
    let diceTwo: Int
    
    var body: some View {
        HStack {
            DiceItem(n: diceOne)
            DiceItem(n: diceTwo)
        }
    }
}

struct DiceItem: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal, 30)
    }
}

struct DiceHolder_Previews: PreviewProvider {
    static var previews: some View {
        DiceHolder(diceOne: 4, diceTwo: 6)
    }
}
