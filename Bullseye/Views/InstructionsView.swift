//
//  InstructionsView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct InstructionsView: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    InstructionsView(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
}
