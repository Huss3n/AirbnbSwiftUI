//
//  ExploreView.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestination: Bool = false
    var body: some View {
        NavigationStack {
            if showDestination {
                DestinationSearch(showDestination: $showDestination)
            }else {
                ScrollView {
                    // search bar
                    SearchAndFilter()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestination.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0...10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingsItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetails()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
