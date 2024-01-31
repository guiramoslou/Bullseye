//
//  BodyTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 30/01/24.
//

import SwiftUI

struct BodyTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("TextColor"))
            .lineSpacing(12)
    }
}

#Preview {
    BodyTextView(text: "You scored 200 Points\n🎉🎉🎉")
}
