//
//  SliderTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct SliderTextView: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    SliderTextView(text: "1")
}
