//
//  MastermindViewModel.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import Foundation
import SwiftUI

class MastermindViewModel{
    public private(set) var board = [Combination]()
    private var secret = [Color]()
    
    init(_ secret: [Color]? = nil){
        if secret == nil{
            // Generate combination
            for _ in 1...4{
                self.secret.append(GetColor(Int.random(in: 1...4)))
            }
        }
        else{
            self.secret = secret!
        }
    }
    
    func check(_ combination: [Color]) -> Combination{
        // Checks wether combination is correct or not and stores it in result
        var result = [CombinationState]()
        for i in 1...4{
            if secret[i] == combination[i]{
                result.append(.correct)
            }
            else{
                for j in 2...4{
                    if secret[i] == secret[j]{
                        result.append(.notInPosition)
                        break
                    }
                }
                result.append(.wrong)
            }
        }
        
        return Combination(colors: combination,
                           result: result)
    }
    
    func GetColor(_ index: Int) -> Color{
        switch index{
        case 1:
            return Color.red
        case 2:
            return Color.blue
        case 3:
            return Color.green
        case 4:
            return Color.white
        default:
            return Color.white
        }
    }
}

