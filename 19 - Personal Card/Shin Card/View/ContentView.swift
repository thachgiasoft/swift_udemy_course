//
//  ContentView.swift
//  Shin Card
//
//  Created by Shin on 20/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            getPrimaryColor()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Profile")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(getPrimaryColor(), lineWidth: 10))
                    .overlay(Circle().stroke(Color(red: 1, green: 1, blue: 1, opacity: 0.2), lineWidth: 0.5))
                    .shadow(color: Color.init(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 6, x: 6, y: 6)
                    .shadow(color: Color.init(red: 1, green: 1, blue: 1, opacity: 0.1), radius: 6, x: -6, y: -6)
                    .padding(.bottom, 40)
                
                Text("Jeferson \"Shin\" Leite Borges")
                    .font(Font.custom("PoiretOne-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("DEVELOPER")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .italic()
                
                Divider()
                    .padding(.bottom, 20)
                
                CapsuleItem(text: "+55 47 9 9152 1061", image: "phone.fill", color: getPrimaryColor()).padding(20)
                CapsuleItem(text: "shin.jef@gmail.com", image: "email.fill", color: getPrimaryColor()).padding(20)
            }
        }
    }
}

func getPrimaryColor() -> Color {
    return Color(red: 0.5, green: 0.3, blue: 0.8)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
