//
//  Ratings.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct Ratings: View {
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "star.fill")
            Text("4.98")
        }
        .font(.subheadline)
        .foregroundStyle(.black)
    }
}

#Preview {
    Ratings()
}
