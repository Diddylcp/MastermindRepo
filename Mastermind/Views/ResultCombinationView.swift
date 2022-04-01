//
//  ResultCombinationView.swift
//  Mastermind
//
//  Created by alumne on 1/4/22.
//

import SwiftUI

struct ResultCombinationView: View{
    let combination =  [Color.gray, Color.red, Color.blue, Color.green]
    let result = [Color.gray, Color.gray, Color.black, Color.white]
    var body: some View{
        HStack{
            ForEach(combination, id: \.self){ color in
                ColorCircle(myColor: color)
            }
            ForEach((1...2), id: \.self) {number in
                VStack{
                    ResultDotView(myColor: result[1])
                    ResultDotView(myColor: result[2])
                }
            }
        }
    }
}

struct ResultCombinationView_Previews: PreviewProvider{
    static var previews: some View{
        ResultCombinationView()
    }
}

struct ColorCircle: View{
    let myColor: Color
    
    var body: some View{
        Circle()
            .fill(myColor)
            .frame(width:50, height:50)
    }
}
