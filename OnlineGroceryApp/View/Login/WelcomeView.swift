//
//  Welcome.swift
//  OnlineGroceryApp
//
//  Created by Mahesh Behere on 19/05/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: .screenWidth,height: .screenHeight)
            
            
            VStack{
                Spacer()
                
                Image(.appLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                    .padding(.bottom,18)
                
                Text("Welcome\nto our store")
                    .foregroundStyle(.white)
                    .font(.customfont(.semibold, fontSize: 48))
                    .multilineTextAlignment(.center)
                
                Text("Get your groceries as faster as in one hour")
                    .foregroundStyle(.white.opacity(0.7))
                    .font(.customfont(.medium, fontSize: 16))
                    .padding(.bottom,30)
                
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Get Started") {
                        print("Get started Button Tap")
                    }
                }

                
                
                Spacer()
                    .frame(height: 80)
                
            }
            .padding(.horizontal,20)
            .border(.blue)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
        
}

#Preview {
    NavigationView {
        WelcomeView()
    }
    
}
