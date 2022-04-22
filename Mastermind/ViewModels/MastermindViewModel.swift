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
    @Published var isGameStarted: Bool = false 
    @Published var totalTries: Int = 0 // How many tries player has used
    @Published var board = [Combination]() // Tries information
    @Published var playerGuessCombination = [Color]()
    @State var colorGuessIndex = [0,0,0,0]
    @State var playerHasWon: Bool = false
    var flagMachineUsed = [false, false, false, false]
    
    
    private var secretCombination = [Color]() // Color combination player needs to guess
    
    init(_ secret: [Color]? = nil){
        if secret == nil{
            // Generate combination
            for _ in 1...4{
                self.playerGuessCombination.append(GetColor(Int.random(in: 1...4)))
            }
        }
        else{
            self.playerGuessCombination = secret!
        }
    }
    
    func GenerateSecretCombination(){
        for _ in 1...4{
            secretCombination.append(GetColor(Int.random(in: 1...4)))
        }
    }

    func CheckPlayersCombination(combination: [Color]) -> Combination{
        // Checks wether combination is correct or not and stores it in result
        /// There's an error, we need to keep track of the colorCombinations that are used to not repeat results
        /// (if there's 1 red in combination, it will show to the player to all its reds that are not in position insted of showing only in one)
        flagMachineUsed = [false, false, false, false]
        var result = [CombinationState]()
        for i in 0...3{
            if playerGuessCombination[i] == combination[i]{
                result.append(.correct)
                flagMachineUsed[i] = true
            }
        }
        for i in 0...3{
            for j in 0...3{
                if (playerGuessCombination[i] == combination[j] && flagMachineUsed[j] == false){
                    flagMachineUsed[j] = true
                    result.append(.notInPosition)
                    break
                }
            }
            if(result.count == i){
                result.append(.wrong)
            }
        }
        
        isGameFinished = true
        for i in 1...4{
            if(result[i] != CombinationState.correct){
                isGameFinished = false
            }
        }
        if(isGameFinished){
            playerHasWon = true
        }

        if(totalTries < 10){
            isGameFinished = true
        }

        return Combination(colors: combination,
                           result: result)
    }

    public func GuessButtonPressed(){
        if(!isGameFinished){
            board.append(CheckPlayersCombination(combination: playerGuessCombination))
            totalTries += 1
            ResetPlayerGuesses()
        }
        
    }

    public func PlayButtonPressed(){
        GenerateSecretCombination()
        totalTries = 0
        board.append(CheckPlayersCombination(combination: playerGuessCombination))
        isGameFinished = false
        isGameStarted = true
        playerHasWon = false
        //board.removeAll()
        flagMachineUsed = [false, false, false, false]
        ResetPlayerGuesses()
    }

    func ResetPlayerGuesses(){
        playerGuessCombination.removeAll()
        colorGuessIndex = [0,0,0,0]
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
            return Color.yellow
        default:
            return Color.yellow
        }
    }
}

