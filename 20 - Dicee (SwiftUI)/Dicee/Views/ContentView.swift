//
//  ContentView.swift
//  Dicee
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Logo()
                Spacer()
                DiceHolder(diceOne: 1, diceTwo: 2)
                Spacer()
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                }
                .background(Color.red)
                .cornerRadius(20)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
