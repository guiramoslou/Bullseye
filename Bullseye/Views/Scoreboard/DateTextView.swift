//
//  DateTextView.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 31/01/24.
//

import SwiftUI

struct DateTextView: View {
    var date: Date
    var body: some View {
        Text(date, style: .time)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

#Preview {
    DateTextView(date: Date())
}
