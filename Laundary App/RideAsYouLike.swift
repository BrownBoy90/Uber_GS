//
//  WaysToSaveWithUber.swift
//  Laundary App
//
//  Created by Gurnoor Singh on 19/01/25.
//

import SwiftUI

struct RideAsYouLike: View {
    var RideAsYouLike_Image: ImageResource
    var RideAsYouLike_Title: String
    var RideAsYouLike_Description: String
    var body: some View {
        HStack {
            VStack {
                Image(RideAsYouLike_Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 140)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(RideAsYouLike_Title)
                        Image(systemName: "arrow.right")
                    }
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    
                    Text(" ")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                }
                .frame(width: 250)
            }
        }
    }
}

#Preview {
    RideAsYouLike(RideAsYouLike_Image: .rectangle30, RideAsYouLike_Title: "Uber Moto rides", RideAsYouLike_Description: "Affordable motorcycle pick-ups")
}
