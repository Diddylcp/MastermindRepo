// Created on iPad de Borja.

import SwiftUI

struct PlayButtonView: View {
    @ObservedObject var viewModel = MastermindViewModel()
    var body: some View {
        Button(action: viewModel.PlayButtonPressed){
            Text("Play New Game")
        }
        .buttonStyle(.bordered)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlayButtonView()
    }
}
