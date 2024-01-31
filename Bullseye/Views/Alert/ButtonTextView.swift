//
//  ButtonTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 30/01/24.
//

import SwiftUI

struct ButtonTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
            .font(.body)
            .fontWeight(.bold)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    ButtonTextView(text: "Start New Round")
        .padding()
}
