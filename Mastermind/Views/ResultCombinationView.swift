//
//  ResultCombinationView.swift
//  Mastermind
//
//  Created by alumne on 1/4/22.
//

import SwiftUI

struct ResultCombinationView: View{
    var combination =  [Color]()
    var result = [CombinationState]()
    
    let rowsGrid = [
        GridItem(.fixed(15)),
        GridItem(.fixed(15))
        ]
    
    init(_ combination: [Color], _ result: [CombinationState]){
        self.combination = combination
        self.result = result
    }
    
    var body: some View{
        HStack{
            ForEach(combination, id: \.self){ color in
                ColorCircle(myColor: color)
            }
            LazyHGrid(rows: rowsGrid, spacing: 10){
                ForEach(result, id: \.self) {resultState in
                    ResultDotView(myState: resultState)
                }
            }
            
        }
    }
}

struct ResultCombinationView_Previews: PreviewProvider{
    static var previews: some View{
        ResultCombinationView([.gray, .gray, .gray, .gray], [.correct, .correct, .notInPosition, .wrong])
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
