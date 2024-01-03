//
//  Profile.swift
//  AirbnbSwiftUI
//
//  Created by Muktar Hussein on 02/01/2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Profile")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Login to start planning your next trip")
                .font(.headline)
            
            Button {
                // login function
            } label: {
                Text("Log in")
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            HStack {
                Text("Don't have an account?")
                Text("SignUp")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.callout)
            
            VStack(spacing: 20) {
                HStack {
                    Image(systemName: "gear")
                    Text("Settings")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "gear")
                    Text("Accessability")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "questionmark.circle")
                    Text("Visit the Help Center")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
            
            
        }
        .padding()
    }
}

#Preview {
    Profile()
}
