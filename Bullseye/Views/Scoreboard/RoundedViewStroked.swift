//
//  RoundedViewStroked.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct RoundedViewStroked: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .foregroundColor(Color("TextColor"))
            .overlay(
                Circle()
                    .strokeBorder(Color("ScoreboardRowColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

#Preview {
    RoundedViewStroked(text: "1")
}
