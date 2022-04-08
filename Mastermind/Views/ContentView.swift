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
            ScrollView{
                // Here comes foreach
                ForEach(viewModel.board, id:\.id){ guess in
                    ResultCombinationView(guess.colorCombination, guess.result)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()  
            }
            // User selection
            PlayerGuessArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

