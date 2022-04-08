//
//  ColorGuess.swift
//  Mastermind
//
//  Created by alumne on 8/4/22.
//

import SwiftUI

struct ColorGuess: View{
    @State var colorSelected = 0
    
    var body: some View{
        Button{
            print("working")
            colorSelected += 1
            colorSelected %= 4
            
            
        } label:{
            Circle()
            .fill(GetColor(colorSelected))
            .frame(width:50, height:50)
        }
        
        
        
    }
    
    func GetColor(_ index: Int) -> Color{
        switch index{
        case 0:
            return Color.red
        case 1:
            return Color.blue
        case 2:
            return Color.green
        case 3:
            return Color.yellow
        default:
            return Color.yellow
        }
    }
}

struct ColorGuess_Previews: PreviewProvider{
    static var previews: some View{
        ColorGuess()
    }
}
