//
//  ResultDotView.swift
//  Mastermind
//
//  Created by alumne on 1/4/22.
//

import SwiftUI

struct ResultDotView: View{
    let myState: CombinationState
    var body: some View{
        Circle()
            .fill(GetResultDotViewColor(myState))
            .frame(width: 15, height: 15)
    }
    
    func GetResultDotViewColor(_ state: CombinationState)-> Color{
        switch state{
        case .correct:
            return Color.green
        case .notInPosition:
            return Color.yellow
        case .wrong:
            return Color.red
        }
    }
}

struct ResultDotView_Previews: PreviewProvider{
    static var previews: some View{
        ResultDotView(myState: CombinationState.notInPosition)
    }
}
