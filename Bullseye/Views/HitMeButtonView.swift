//
//  HitMeButtonView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 27/01/24.
//

import SwiftUI

struct HitMeButtonView: View {
    @Binding
    var alertIsVisible: Bool
    @Binding
    var sliderValue: Double
    @Binding
    var game: Game
    var body: some View {
        Button("Hit me".uppercased()) {
            withAnimation {
                alertIsVisible = true
            }
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(colors: [Color.white.opacity(0.3), Color.clear], startPoint: .top, endPoint: .bottom)
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundedRectViewCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
        )
        .foregroundColor(.white)
        .cornerRadius(Constants.General.roundedRectViewCornerRadius)
        .bold()
        .font(.title3)
    }
}

#Preview {
    HitMeButtonView(alertIsVisible: .constant(false), sliderValue: .constant(50.0), game: .constant(Game()))
}
