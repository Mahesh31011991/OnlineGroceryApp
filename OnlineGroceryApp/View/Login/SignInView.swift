//
//  SignInView.swift
//  OnlineGroceryApp
//
//  Created by Mahesh Behere on 19/05/25.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var txtMobileNumber = ""
    
    @State private var country: Country? = Country(phoneCode: "91", isoCode: "IN")
    @State private var showCountryPicker = false


    var body: some View {
        ZStack{
            
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                
                Spacer()
            }
            
            ScrollView{
                
                VStack(alignment: .leading){
                    Text( "Get your groceries\nwith nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom , 25)
                    
                    
                    HStack(spacing: 10){
                        
                        
                        Button {
                            showCountryPicker = true
                        } label: {
                            
                            if let countryObj = country {
                                Text("\(countryObj.isoCode.getFlag())")
                                    .font(.customfont(.medium, fontSize: 35))
                                Text("+\(countryObj.phoneCode)")
                                    .foregroundStyle(.primary)
                                    .font(.customfont(.medium, fontSize: 18))
                                    
                            }
                        }

                       
                        TextField("Enter Mobile number", text: $txtMobileNumber)
                            .textFieldStyle(.roundedBorder)
                        

                    }
                    
                    Divider()
                        .padding(.bottom, 25)
                    
                    Text( "Or connect with social media")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom , 25)
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.bottom, 8 )
                    
                    
                    Button {
                        
                    } label: {
                        
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    .background( Color(hex: "4A66AC"))
                    .cornerRadius(20)
                    
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets +  .screenWidth * 0.6  )
                
            }
            
            
        }
        .sheet(isPresented:$showCountryPicker, content: {
            
            CountryPicker(country: $country)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}
