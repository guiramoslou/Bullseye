//
//  TopView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct TopView: View {
    @Binding
    var game: Game
    @State
    private var leaderBoardIsShowing = false
    var body: some View {
        HStack {
            Button(action: {
                game.restart()
            }, label: {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            })
            Spacer()
            Button(action: {
                leaderBoardIsShowing = true
            }, label: {
                RoundedImageViewFilled(systemName: "list.dash")
            })
            .sheet(isPresented: $leaderBoardIsShowing, content: {
                ScoreboardView(leaderBoardIsShowing: $leaderBoardIsShowing, game: $game)
            })
        }
    }
}

#Preview {
    TopView(game: .constant(Game()))
}
