//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let board = [Color.gray, .gray, .gray, .gray]
    let game = [ResultCombinationView(), ResultCombinationView()]
    
    
    var body: some View {
        VStack{
            ScrollView{
                
                // Here comes foreach
                
                HStack{
                    // Circles
                    ColorCircle(myColor: board[0])
                    ColorCircle(myColor: board[1])
                    ColorCircle(myColor: board[2])
                    ColorCircle(myColor: board[3])
                    VStack{
                        ResultDotView(myColor: board[0])
                        ResultDotView(myColor: board[0])
                    }
                    VStack{
                        ResultDotView(myColor: board[0])
                        ResultDotView(myColor: board[0])
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            }
            HStack{
                
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

