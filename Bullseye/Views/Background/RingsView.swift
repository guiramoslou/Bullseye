//
//  RingsView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 30/01/24.
//

import SwiftUI

struct RingsView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            ForEach(1..<6) { ring in
                let size = CGFloat(ring * 100)
                let opacity = colorScheme == .dark ? 0.1 : 0.3
                let startColor = Color("BackgroundCircleColor").opacity(opacity * 0.8)
                let endColor = Color("BackgroundCircleColor").opacity(0)
                Circle()
                    .stroke(lineWidth: 20.0)
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [startColor, endColor]),
                                       center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                                       startRadius: 100,
                                       endRadius: 300)
                    )
                    .frame(width: size, height: size)
            }
        }
    }
}

#Preview {
    RingsView()
}
