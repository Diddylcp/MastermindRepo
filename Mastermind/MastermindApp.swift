//
//  MastermindApp.swift
//  Mastermind
//
//  Created by alumne on 25/3/22.
//

import SwiftUI

@main
struct MastermindApp: App {
    @ObservedObject viewModel = MastermindViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
