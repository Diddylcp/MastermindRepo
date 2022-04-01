//
//  ResultDotView.swift
//  Mastermind
//
//  Created by alumne on 1/4/22.
//

import SwiftUI

struct ResultDotView: View{
    let myColor: Color
    var body: some View{
        Circle()
            .fill(myColor)
            .frame(width: 15, height: 15)
    }
}

struct ResultDotView_Previews: PreviewProvider{
    static var previews: some View{
        ResultDotView(myColor: Color.gray)
    }
}
