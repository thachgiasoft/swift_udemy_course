//
//  ContentView.swift
//  I am Rich
//
//  Created by Shin on 20/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.2, blue: 0.9)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                Text("I am Rich!")
                    .font(.system(size: 35.0))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
