//
//  ContentView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    var body: some View {
        ZStack {
            BackGroundView(game: $game)
            VStack {
                InstructionsView(text: "🎯🎯🎯\nPut the Bullseye as close as you can to")
                    .padding(.horizontal, 30)
                BigNumberView(text: String(game.target))
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                if alertIsVisible {
                    PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                } else {
                    HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                }
            }
            if !alertIsVisible {
                SliderView(sliderValue: $sliderValue)
                    .zIndex(1)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    ContentView()
}
