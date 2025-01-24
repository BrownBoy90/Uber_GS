//
//  FooterButtonsMainScreen.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 19/01/25.
//

import SwiftUI

struct FooterButtonsMainScreen: View {
    var footerICon: ImageResource
    var footerIconText: String
    var body: some View {
        VStack {
            Image(footerICon)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            
            Text(footerIconText)
                .padding(.top, -20)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    FooterButtonsMainScreen(footerICon: .iconHome, footerIconText: "Home")
}
