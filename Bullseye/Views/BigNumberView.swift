//
//  BigNumberView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct BigNumberView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .kerning(-1.0)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    BigNumberView(text: "89")
}
