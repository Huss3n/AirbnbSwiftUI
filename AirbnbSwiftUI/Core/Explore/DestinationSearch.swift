//
//  DestinationSearch.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearch: View {
    @State private var search = ""
    @Binding var showDestination: Bool
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var guestCount = 1
    
    var dateFormater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                xMark
                
                Spacer()
                
                if !search.isEmpty {
                    Text("Clear")
                        .foregroundStyle(.black)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .onTapGesture {
                            search = ""
                        }
                }
            }
            .padding()
            
            // where to
            VStack {
                if selectedOption == .location {
                    whereToCollapsed
                }else {
                    ExtractedSubView(title: "Where", description: "Add Destination")
                }
            }
            .modifier(CollapsableModifier()) 
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            
            
            // date selection
            VStack {
                if selectedOption == .dates {
                    PickDate()
                }else {
                    ExtractedSubView(title: "Who", description: "Add dates")
                }
            }
            .modifier(CollapsableModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            
            // number of guest
            VStack {
                if selectedOption == .guests {
                    guestsExpanded
                }else {
                    ExtractedSubView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsableModifier())
            .frame(height: selectedOption == .guests ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        DestinationSearch(showDestination: .constant(false))
    }
}




extension DestinationSearch {
    private var xMark: some View {
        Image(systemName: "xmark.circle")
            .font(.title2)
            .onTapGesture {
                withAnimation(.snappy) {
                    showDestination.toggle()
                }
            }
    }
    
    private var whereToCollapsed: some View {
        VStack(alignment: .leading) {
            Text("Where to?")
                .font(.title2)
                .fontWeight(.semibold)
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search destinations", text: $search)
            }
            .frame(height: 44)
            .padding(.horizontal)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(Color(.systemGray4))
            }
        }
    }

    
    private var guestsExpanded: some View {
        VStack(alignment: .leading) {
            Text("Who's coming?")
                .font(.title2)
                .fontWeight(.semibold)
            
            HStack {
                Stepper {
                    Text("\(guestCount) \(guestCount == 1 ? "adult" : "adults" )")
                } onIncrement: {
                    guestCount += 1
                } onDecrement: {
                    guard guestCount > 1 else { return }
                    guestCount -= 1
                }
            }
        }
    }
}

struct ExtractedSubView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
                    .font(.headline)
            }
        }
    }
}


struct CollapsableModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
