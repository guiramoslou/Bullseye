//
//  LabelTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct LabelTextView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.caption)
            .kerning(1.5)
            .foregroundStyle(Color("TextColor"))
    }
}

#Preview {
    LabelTextView(text: "Score")
}
