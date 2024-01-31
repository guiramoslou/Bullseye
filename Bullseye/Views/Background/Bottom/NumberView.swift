//
//  NumberView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct NumberView: View {
    var title: String
    var text: String
    var body: some View {
        VStack {
            NumberTextView(title: title)
            RoundedRectangleViewStroked(text: text)
        }
    }
}

#Preview {
    NumberView(title: "Score", text: "999")
}
