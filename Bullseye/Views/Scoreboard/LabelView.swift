//
//  LabelView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
            LabelTextView(text: "score")
                .frame(width: Constants.Scoreboard.scoreColumnWidth)
            Spacer()
            LabelTextView(text: "date")
                .frame(width: Constants.Scoreboard.dateColumnWidth)
        }
        .padding(.horizontal)
        .frame(maxWidth: Constants.Scoreboard.maxRowWidth)
    }
}

#Preview {
    LabelView()
}
