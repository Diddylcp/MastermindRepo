//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let board = [Color.gray, .gray, .gray, .gray]
    let game = [ResultCombinationView]()
    @ObservedObject var viewModel = MastermindViewModel()
    
    
    
    var body: some View {
        VStack{
            if(viewModel.isGameFinished){
                EndView(viewModel: viewModel)
            }
            //else if(!viewModel.isGameStarted){
            //    PlayButtonView()
            //}
            else{
                ScrollView{
                    // Here comes foreach
                    ForEach(viewModel.board, id:\.id){ guess in
                        ResultCombinationView(guess.colorCombination, guess.result)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
                // User selection
                PlayerGuessArea(viewModel: viewModel)
                Button(action: viewModel.PlayButtonPressed){
                    Text("Play New Game")
                }
                .buttonStyle(.bordered)
                .foregroundColor(.white)
                .background(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

