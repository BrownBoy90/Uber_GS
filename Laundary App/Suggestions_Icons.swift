//
//  Suggestions_Icons.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 18/01/25.
//

import SwiftUI

struct Suggestions_Icons: View {
    var body: some View {
        ZStack {
            ZStack{
                VStack {
                    Image(.carUber)
                    
                    Text("Trip")
                        .padding(.top, 5)
                        .padding(.bottom, -23)
                        .foregroundColor(.black)
                }
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 13)
            .background(.gray.mix(with: .white, by: 0.85))
            .cornerRadius(20)
        }
    }
}

#Preview {
    Suggestions_Icons()
}
