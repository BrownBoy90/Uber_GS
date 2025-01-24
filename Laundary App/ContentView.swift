import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView(showsIndicators: false) {
                    HStack(spacing: 10) {
                        NavigationLink(destination: PlanYourRide()){
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .fontWeight(.bold)
                                    .font(.largeTitle)
                                Text("Enter pickup point")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.black.opacity(0.9))
                               
                            }
                        }
                            .padding() // Add padding inside the button
                            .cornerRadius(10) // Rounded corners
                            .font(.headline)
                            .foregroundStyle(.black)
                        
                        Button{
                            
                        } label: {
                            HStack {
                                Image(systemName: "calendar")
                                Text("Later")
                            }
                            .padding() // Add padding inside the button
                            .background(Color.white) // Add white background to the button
                            .cornerRadius(40) // Rounded corners for the white background
                            .font(.headline)
                            .foregroundStyle(.black)
                        }
                    }
                    .padding(.horizontal, 20.0) // Add padding to the HStack
                    .background(.gray.opacity(0.2)) // Background for the entire button group
                    .cornerRadius(50) // Rounded corners for the grey area
                    
                    ZStack{
                        HStack{
                            //Want better Pickups and share location button
                            VStack{
                                HStack {
                                    Text("Want better pickups?")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(nil)
                                        .padding(.bottom)
                                        .padding(.leading, 5)
                                        .padding(.top,-19)
                                    Spacer()
                                }
                                
                                VStack {
                                    HStack {
                                        Button {
                                            
                                        } label: {
                                            Text("Share location")
                                                .font(.headline)
                                                .foregroundColor(Color(red: 0.055, green: 0.339, blue: 0.176))
                                                .padding(.vertical, 14.0)
                                                .padding(.horizontal, 10.0)
                                        }
                                        .background(Color.white)
                                        .cornerRadius(25)
                                        .padding(.top, 20)
                                        .padding(.bottom, -30)
                                        
                                        Spacer()
                                    }
                                }
                            }
                            .padding(.all,40.0)
                            .padding(.leading, -28.0)
                            //photo of a girl looking outside
                            Image(.sharpenedImageTransformed)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                            
                        }
                        //                    .padding(.leading,8.0)
                        .padding(.top, -10.0)
                        .padding(.bottom, -3.0)
                    }
                    .background(Color(red: 0.055, green: 0.339, blue: 0.176))
                    .cornerRadius(15)
                    .padding(.top, 30.0)
                    .padding(.horizontal, 9)
                    
                    
                    //Suggestions & See all Button
                    HStack{
                        Text("Suggestions")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading,7)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("See all")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                        }
                        .padding(.trailing)
                    }
                    .padding(.top)
                    
                    //Button array 1)Trip 2)UberAuto 3)Moto 4)Courier
                    LazyVGrid(columns: [GridItem(),GridItem(),GridItem(),GridItem()]) {
                        Button{
                            
                        } label: {
                            Suggestions_Icons(Suggestions_icons: .carUber, Suggestions_Text: "Ride")
                        }
                        
                        Button{
                            
                        } label: {
                            Suggestions_Icons(Suggestions_icons: .image4, Suggestions_Text: "Package")
                        }
                        
                        Button{
                            
                        } label: {
                            Suggestions_Icons(Suggestions_icons: .rentals, Suggestions_Text: "Rentals")
                        }
                        
                        Button{
                            
                        } label: {
                            Suggestions_Icons(Suggestions_icons: .reserve, Suggestions_Text: "Reserve")
                        }
                        
                    }
                    .padding(.horizontal)
                    //Commute Smarter
                    
                    HStack {
                        Text("Ride as you like it")
                            .padding(.top)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.leading, 7)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            Button {
                                
                            } label: {
                                RideAsYouLike(RideAsYouLike_Image: .rectangle30, RideAsYouLike_Title: "Uber Moto rides", RideAsYouLike_Description: "Affordable motorcycle pick-ups")
                            }
                            .padding(.horizontal, 2)
                        }
                    }
                    
                    HStack {
                        Text("Commute Smarter")
                            .padding(.top)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.leading, 7)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(0..<5){_ in
                                Button {
                                    
                                } label: {
                                    RideAsYouLike()
                                }
                                .padding(.horizontal, 2)
                            }
                        }
                    }
                }
                .padding(.bottom, 50)
                .navigationTitle("Uber")
                
                VStack {
                    Spacer()
                    ZStack(alignment: .bottom) {
                        Color.white
                        LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()]){
                            Button {
                                
                            } label: {
                                FooterButtonsMainScreen(footerICon: .iconHome, footerIconText: "Home")
                            }
//                            .padding(.horizontal)
                            
                            Button {
                                    
                            } label: {
                                FooterButtonsMainScreen(footerICon: .iconServices, footerIconText: "Services")
                            }
//                            .padding(.horizontal)
                            
                            Button {
                                    
                            } label: {
                                FooterButtonsMainScreen(footerICon: .iconActivity, footerIconText: "Activity")
                            }
//                            .padding(.horizontal)
                            
                            Button {
                                    
                            } label: {
                                FooterButtonsMainScreen(footerICon: .iconAccount, footerIconText: "Account")
                            }
//                            .padding(.horizontal)
                        }
                        .padding(.bottom)
                        .padding(.horizontal,15)
                    }
                    .frame(height: 75)
                }
                .ignoresSafeArea()
            }
            
        }
        .navigationTitle("Uber")
    }
}

#Preview {
    ContentView()
}
