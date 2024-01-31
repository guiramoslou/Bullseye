//
//  PointsView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 30/01/24.
//

import SwiftUI

struct PointsView: View {
    @Binding
    var alertIsVisible: Bool
    @Binding
    var sliderValue: Double
    @Binding
    var game: Game
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        VStack(spacing: 10) {
            InstructionsView(text: "The slider's value is")
            BigNumberView(text: String(roundedValue))
            BodyTextView(text: "You scored \(points) Points\n🎉🎉🎉")
            Button(action: {
                withAnimation {
                    alertIsVisible = false
                }
                game.startNewRound(points: points)
            }, label: {
                ButtonTextView(text: "Start New Round")
            })
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .clipShape(RoundedRectangle(cornerRadius: Constants.General.roundedRectViewCornerRadius))
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10, x: 5, y: 5)
    }
}

#Preview {
    PointsView(alertIsVisible: .constant(false), sliderValue: .constant(50), game: .constant(Game()))
}
