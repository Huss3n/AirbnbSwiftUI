//
//  PickDate.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct PickDate: View {
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("When's your trip?")
                .font(.title2)
                .fontWeight(.semibold)
            
            VStack {
                DatePicker("From", selection: $startDate, displayedComponents: .date)
                Divider()
                DatePicker("To", selection: $endDate, displayedComponents: .date)
            }
            .foregroundStyle(.gray)
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    PickDate()
}
