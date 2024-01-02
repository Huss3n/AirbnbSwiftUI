//
//  SearchAndFilter.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct SearchAndFilter: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Any week - Add guests")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Image(systemName: "line.3.horizontal.decrease.circle")
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 1.0)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.5), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilter()
}
