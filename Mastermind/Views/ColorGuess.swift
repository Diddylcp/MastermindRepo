//
//  ColorGuess.swift
//  Mastermind
//
//  Created by alumne on 8/4/22.
//

import SwiftUI

struct ColorGuess: View{
    @Binding var colorSelectedIndex: Int
    
    var body: some View{
        Button{
            print("working")
            colorSelectedIndex += 1
            colorSelectedIndex %= 4
            
            
        } label:{
            Circle()
            .fill(GetColor(colorSelectedIndex))
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
    @State var myInt = 0
    static var previews: some View{
        ColorGuess(colorSelectedIndex: .constant(0))
    }
}
