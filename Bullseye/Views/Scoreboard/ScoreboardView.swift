//
//  ScoreboardView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct ScoreboardView: View {
    @Binding var leaderBoardIsShowing: Bool
    @Binding var game: Game
    let index = 1
    let score = 999
    let date = Date()
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 10) {
                HeaderView(leaderBoardIsShowing: $leaderBoardIsShowing)
                LabelView()
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(game.leaderboardEntries.indices, id: \.self) { index in
                            let leaderboardEntry = game.leaderboardEntries[index]
                            RowView(index: index + 1, score: leaderboardEntry.score, date: leaderboardEntry.date)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScoreboardView(leaderBoardIsShowing: .constant(false), game: .constant(Game(loadTestData: true)))
}
