//
//  WaysToSaveWithUber.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 19/01/25.
//

import SwiftUI

struct WaysToSaveWithUber: View {
    var body: some View {
        HStack {
            VStack {
                Image(.rectangle30)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 140)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Uber Moto rides")
                        Image(systemName: "arrow.right")
                    }
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    
                    Text("Affordable motorcycle pick-ups")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                }
                .frame(width: 250)
            }
        }
    }
}

#Preview {
    WaysToSaveWithUber()
}
