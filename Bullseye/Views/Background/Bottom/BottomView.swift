//
//  BottomView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct BottomView: View {
    @Binding
    var game: Game
    var body: some View {
        HStack {
            NumberView(title: "score", text: String(game.score))
            Spacer()
            NumberView(title: "round", text: String(game.round))
        }
    }
}

#Preview {
    BottomView(game: .constant(Game()))
}
