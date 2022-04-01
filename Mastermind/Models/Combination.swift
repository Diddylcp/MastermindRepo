//
//  Combination.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import Foundation
import SwiftUI

class Combination{
    var colorCombination: [Color]
    var result: [CombinationState]
    
    init(colors: [Color], result: [CombinationState]){
        self.colorCombination = colors
        self.result = result
    }
}

enum CombinationState {
    case correct
    case notInPosition
    case wrong
}
