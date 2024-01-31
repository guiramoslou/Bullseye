//
//  NumberTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct NumberTextView: View {
    var title: String
    var body: some View {
        Text(title.uppercased())
            .bold()
            .font(.caption)
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    NumberTextView(title: "Score")
}
