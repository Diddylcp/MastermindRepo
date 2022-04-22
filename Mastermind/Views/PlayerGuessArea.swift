//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct PlayerGuessArea: View{
    @ObservedObject var viewModel: MastermindViewModel
    
    var body: some View{
        HStack{
            ColorGuess(colorSelectedIndex: $viewModel.colorGuessIndex[0])
            ColorGuess(colorSelectedIndex: $viewModel.colorGuessIndex[1])
            ColorGuess(colorSelectedIndex: $viewModel.colorGuessIndex[2])
            ColorGuess(colorSelectedIndex: $viewModel.colorGuessIndex[3])
            Button(action: viewModel.GuessButtonPressed){
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
        PlayerGuessArea(viewModel: MastermindViewModel())
    }
}
