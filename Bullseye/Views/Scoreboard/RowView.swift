//
//  RowView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct RowView: View {
    var index: Int
    var score: Int
    var date: Date
    var body: some View {
        HStack() {
            RoundedViewStroked(text: String(index))
            Spacer()
            ScoreTextView(score: score)
                .frame(width: Constants.Scoreboard.scoreColumnWidth)
            Spacer()
            DateTextView(date: date)
                .frame(width: Constants.Scoreboard.dateColumnWidth)
        }
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("ScoreboardRowColor"), lineWidth: Constants.General.strokeWidth)
        )
        .padding(.horizontal)
        .frame(maxWidth: Constants.Scoreboard.maxRowWidth)
    }
}

#Preview {
    RowView(index: 1, score: 999, date: Date())
}
