//
//  BigBoldTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct BigBoldTextView: View {
    let text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(2)
            .foregroundStyle(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}

#Preview {
    BigBoldTextView(text: "Scoreboard")
}
