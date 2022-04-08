//
//  ContentView.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

struct PlayerGuessArea: View{
    
    var body: some View{
        Circle()
            .fill(myColor)
            .frame(width:50, height:50)
    }
}

struct PlayerGuessArea: PreviewProvider{
    static var previews: some View{
        PlayerGuessArea()
    }
}