//
//  MastermindViewModel.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import Foundation
import SwiftUI

class MastermindViewModel: ObservableObject{
    @Published var isGameFinished: Bool = false // Flag Game End
    @Published var totalTries: Int = 0 // How many tries player has used
    @Published var board = [Combination]() // Tries information
    @Published var playerGuessCombination: [Color]
    
    private var secretCombination = [Color]() // Color combination player needs to guess
    
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
    
    func GenerateSecretCombination(){
        for _ in 1..4{
            secretCombination.insert(Int.random(in: 1...4))
        }
    }

    func CheckPlayersCombination(combination: [Color]) -> Combination{
        // Checks wether combination is correct or not and stores it in result
        var result = [CombinationState]()
        for i in 1...4{
            if secret[i] == combination[i]{
                result.append(.correct)
            }
            else{
                for j in 1...4{
                    if secret[i] == combination[j]{
                        result.append(.notInPosition)
                        break
                    }
                }
                if(result.count < i){
                    result.append(.wrong)
                }
            }
        }

        for i in 1...4{
            if(result[i] != CombinationState.correct)
        }

        if(totalTries < 10)
            isGameFinished = true
        
        return Combination(colors: combination,
                           result: result)
    }

    public func GuessButtonPressed(){
        if(!isGameFinished){
            board.insert(CheckPlayersCombination(combination: playerGuessCombination))
            totalTries += 1
            ResetPlayerGuesses()
        }
    }

    public func PlayButtonPressed(){
        GenerateSecretCombination()
        round = 0
        isGameFinished = false
        board.removeAll()
    }

    func ResetPlayerGuesses(){
        playerGuessCombination.removeAll()
    }


    // Auxiliar function that coverts an Int into a Color
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

