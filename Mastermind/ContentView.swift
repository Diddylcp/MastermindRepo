//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let board = [Color.gray, .gray, .gray, .gray]
    
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
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
            HStack{
                
            }
        }
    }
}

struct ColorCircle: View{
    let myColor: Color
    
    var body: some View{
        Circle()
            .fill(myColor)
            .frame(width:30, height:30)
    }
}

