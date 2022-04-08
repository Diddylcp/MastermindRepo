//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct PlayerGuessArea: View{
    @State private var isExpanded = false
    
    var body: some View{
        HStack{
            ColorGuess()
            ColorGuess()
            ColorGuess()
            ColorGuess()
            Button("Send"){
            }
            .buttonStyle(.bordered)
        }
        .frame( maxHeight: .infinity, alignment: .bottom)
        .padding(10)
        
    }
}

struct PlayerGuessArea_Previews: PreviewProvider{
    static var previews: some View{
        PlayerGuessArea()
    }
}
