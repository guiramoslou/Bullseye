//
//  RoundedImageViewFilled.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(
                        Color("ButtonFilledBackgroundColor")
                    )
            )
    }
}

#Preview {
    RoundedImageViewFilled(systemName: "arrow.counterclockwise")
}
