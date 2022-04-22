//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct PlayerGuessArea: View{
    @ObservedObject viewModel: MastermindViewModel
    
    var body: some View{
        HStack{
            ColorGuess(colorSelectedIndex: viewModel.colorGuessIndex[0])
            ColorGuess(viewModel.colorGuessIndex[0])
            ColorGuess(viewModel.colorGuessIndex[0])
            ColorGuess(viewModel.colorGuessIndex[0])
            Button(action: GuessButtonPressed){
                Text("Send")
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
