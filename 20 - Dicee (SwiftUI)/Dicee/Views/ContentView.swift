//
//  ContentView.swift
//  Dicee
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Logo()
                Spacer()
                DiceHolder(diceOne: leftDice, diceTwo: rightDice)
                Spacer()
                BaseButton(label: "Roll") {
                    self.leftDice = Int.random(in: 1...6)
                    self.rightDice = Int.random(in: 1...6)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
