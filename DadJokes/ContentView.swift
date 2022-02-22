//
//  ContentView.swift
//  DadJokes
//
//  Created by Patrick Boren on 2022-02-22.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    var currentJoke: DadJoke = DadJoke(id: "", joke: "Knock Knock", status: 0)
   
    
    //MARK: computed properties
    
    
    var body: some View {
        VStack {
            
            Text("\(currentJoke.joke)")
                .multilineTextAlignment(.leading)
                .padding(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.primary, lineWidth: 4)
                )
                .padding(10)
            
            Image(systemName: "heart.circle")
                .resizable()
                .frame(width: 35, height: 35)
          
            Button(action: {
                print("I've been pressed")},
            label: { Text("Another One!")})
            
            
            HStack{
                Text("Favourites")
                Spacer()
                    .padding()
            }
          
            
            List {
                Text("Which side of the chicken has more feathers? The outside.")
                Text("Why did the Clydesdale give the pony a glass of water? Because he was a little horse!")
                Text("The great thing about stationery shops is they're always in the same place...")
            }
            
            Spacer()
                        
        }
        .navigationTitle("icanhazdadjoke?")
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
