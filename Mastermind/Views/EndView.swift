// Created on iPad de Borja.

import SwiftUI

struct EndView: View {
    @ObservedObject var viewModel: MastermindViewModel
    var body: some View {
        VStack{
            if(viewModel.hasWon){
                Color.green
                    .ignoresSafeArea()
                Text("YOU WON!!")
            }
            else{
                Color.orange
                    .ignoresSafeArea()
                TEXT("Nice Try")
            }
            NavigationLink("Play New Game", destination: ContentView(viewModel: viewModel))
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}