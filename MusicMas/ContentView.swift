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
            .frame(width: 100.0, height: 100.0) /*.clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)*/
    }
}

struct Lista: View{
    @Binding var listaMusica: [MusicData];
    var body: some View{
        List{
        HStack() {
            //CircleImage()
            
                Image("audifonos").resizable().scaledToFit()
                .frame(width: 100.0, height: 100.0)
            Text("Music Mas").font(.title).italic().foregroundColor(.accentColor)
            Spacer()
            }
        
    }
    
    }
}


struct Buscador: View {
   // @State private var name: String = "Tim"
     @State var name: String = ""
    var body: some View{
        VStack{
                    TextField(" Search Music ", text: $name)
                        .border(Color.black)
                    Text(" -> \(name)!")
        }
    }
    
}

/*
struct ProfileEditor: View {
    @Binding var name: String = ""
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username",text: $name)
            }
        }
    }
}
*/
struct ContentView: View {
    @Binding var listaMusica: [MusicData];
    @State private var name: String = "lin"
   // @State var musica: MusicData;
   
    var body: some View {
        NavigationView {
            Lista(listaMusica: $listaMusica)
                        .navigationBarItems(leading:

                            HStack(alignment: .bottom, spacing: 20){
                            TextField(" Search Music ", text: $name)
                                               .border(Color.black)
                        }).frame(alignment: .bottom)
                   .navigationBarTitle(
                    Text("Music +").foregroundColor(.accentColor),
                    displayMode: .inline
                    )
            
            //.navigationBarItems(leading: Buscador())
       
           }
        /*
        List{
        HStack() {
            //CircleImage()
            
                Image("audifonos").resizable().scaledToFit()
                .frame(width: 100.0, height: 100.0)
                Text("Music Mas").font(.title).italic().foregroundColor(.accentColor)
            Spacer()
            }
        
        
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(listaMusica: <#[MusicData]#>).previewLayout(.fixed(width: 300, height: 70))
    }
}
