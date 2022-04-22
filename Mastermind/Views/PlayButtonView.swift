// Created on iPad de Borja.

import SwiftUI

struct PlayButtonView: View {
    @ObservedObject var viewModel: MastermindViewModel
    var body: some View {
        NavigationLink("Play New Game", destination: ContentView(viewModel: viewModel))
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlayButtonView()
    }
}