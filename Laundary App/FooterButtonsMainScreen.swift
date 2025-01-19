//
//  FooterButtonsMainScreen.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 19/01/25.
//

import SwiftUI

struct FooterButtonsMainScreen: View {
    var body: some View {
        VStack {
            Image(.iconHome)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            
            Text("Home")
                .padding(.top, -20)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    FooterButtonsMainScreen()
}
