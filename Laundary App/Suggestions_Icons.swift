//
//  Suggestions_Icons.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 18/01/25.
//

import SwiftUI

struct Suggestions_Icons: View {
    var Suggestions_icons: ImageResource
    var Suggestions_Text: String
    var body: some View {
        ZStack {
            Color.gray.mix(with: .white, by: 0.85)
            
            VStack {
                Image(Suggestions_icons)
                    .padding(.top, 20)
                
                Text(Suggestions_Text)
                    .foregroundColor(.black)
            }
        }
        .frame(width: 80, height: 110)
        .cornerRadius(20)
//        ZStack {
//            VStack {
//                Image(Suggestions_icons)
//            }
//            
//            VStack(alignment: .trailing) {
//                Text(Suggestions_Text)
//                    .padding(.top, 5)
//                    .padding(.bottom, -23)
//                    .foregroundColor(.black)
//            }
//        }
//        .padding(.vertical, 30)
//        .padding(.horizontal, 13)
//        .background(.gray.mix(with: .white, by: 0.85))
//        .cornerRadius(20)
    }
}

#Preview {
                        Suggestions_Icons(Suggestions_icons: .carUber, Suggestions_Text: "Ride")
}
