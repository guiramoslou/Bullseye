//
//  ScoreTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct ScoreTextView: View {
    var score: Int
    var body: some View {
        Text(String(score))
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    ScoreTextView(score: 999)
}
