// Created on iPad de Borja.

import SwiftUI

struct EndView: View {
    @ObservedObject var viewModel: MastermindViewModel
    var body: some View {
        VStack{
            if(viewModel.playerHasWon){
                Color.green
                    .ignoresSafeArea()
                Text("YOU WON!!")
            }
            else{
                Color.orange
                    .ignoresSafeArea()
                Text("Nice Try")
                    .background(.orange)
            }
            NavigationLink("Play New Game", destination: ContentView(viewModel: viewModel))
                .frame(alignment: .center)
        }
        .frame(alignment: .center)
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView(viewModel: MastermindViewModel())
    }
}
