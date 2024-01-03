//
//  ListingDetails.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI
import MapKit


struct ListingDetails: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingCorousel()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .foregroundStyle(.white)
                                .frame(width: 32, height: 32)
                            }
                        .padding(40)
                        .offset(x: -10, y: 20)
                }

            }
            
            // property info - name, ratings, review
            VStack(alignment: .leading, spacing: 8) {
                // Name
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                // Ratings and review
                HStack {
                    Ratings()
                    Text("-")
                    Text("28 Reviews")
                        .underline(true, color: Color.black)
                }
                .fontWeight(.medium)
                
                // location
                Text("Miami Florida")
                    .foregroundStyle(.gray)
            }
            .font(.caption)
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info - name, photo
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Entire Villa Hosted By")
                        .font(.headline)
                    
                    Text("John Smith")
                        .font(.headline)
                    
                    Text("4 guests - 4 bedrooms 4 beds - 3 baths")
                        .font(.caption)
                        .foregroundStyle(.black.opacity(0.6))
                }
                
                Spacer()
                
                // profile
                Image("listing-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.trailing)
            }
            .padding()
            
            Divider()
            
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                // self check in
                HStack {
                    Image(systemName: "door.left.hand.open")
                    Text("Self Check In")
                }
                .font(.headline)
                
                Text("Check yourself in with keypad")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                // superhost
                HStack {
                    Image(systemName: "medal")
                    Text("Superhost")
                }
                .font(.headline)
                
                Text("Superhosts are expirienced, highly rated hosts who are commited to providing great stars for guests")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .padding(4)
            
            Divider()
            
            // where you will sleep
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you will sleep")
                    .font(.title)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedroom in
                            VStack(spacing: 10) {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 100, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1.0)
                            }
                        }
                    }
                }
            }
            .padding()
            
            Divider()
            
            // what the place offers
            VStack(alignment: .leading, spacing: 16) {
                Text("What the place offers")
                    .font(.title)
                    .fontWeight(.semibold)
                
                ForEach(0..<5){ icon in
                    HStack(spacing: 10) {
                        Image(systemName: "wifi")
                        Text("Wifi")
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // where you will be
            VStack(alignment: .leading, spacing: 16) {
                // add map location
                Text("Where you will be")
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 68)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Kshs 6700")
                            .font(.headline)
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Dec 15 - 20")
                            .font(.footnote)
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetails()
}
