//
//  ContentView.swift
//  MusicMas
//
//  Created by thomas anderson on 12/21/19.
//  Copyright © 2019 juan Andrés. All rights reserved.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("audifonos").resizable().scaledToFit()
            .frame(width: 100.0, height: 100.0).clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}
struct ContentView: View {
    var body: some View {
       
        VStack(alignment: .leading) {
                CircleImage()
                               .offset(y: -130)
                               .padding(.bottom, -130)
                Text("Music Mas").font(.title).italic().foregroundColor(.accentColor)
            }.offset(y: 0)
            .padding(.bottom, 30)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
