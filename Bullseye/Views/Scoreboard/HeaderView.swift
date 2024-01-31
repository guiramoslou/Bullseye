//
//  HeaderView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Binding var leaderBoardIsShowing: Bool
    var body: some View {
        ZStack {
            HStack {
                BigBoldTextView(text: "Scoreboard")
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    Spacer()
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        leaderBoardIsShowing.toggle()
                    }
                }, label: {
                    RoundedImageViewFilled(systemName: "xmark")
                })
            }
        }
        .padding([.horizontal, .top])
    }
}

#Preview {
    HeaderView(leaderBoardIsShowing: .constant(false))
}
