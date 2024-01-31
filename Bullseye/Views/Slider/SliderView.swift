//
//  SliderView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct SliderView: View {
    @Binding
    var sliderValue: Double
    var body: some View {
        HStack {
            SliderTextView(text: "1")
                .frame(width: 35)
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderTextView(text: "100")
                .frame(width: 35)
        }
        .padding()
    }
}

#Preview {
    SliderView(sliderValue: .constant(50.0))
}
