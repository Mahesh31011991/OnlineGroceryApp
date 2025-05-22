//
//  LogInView.swift
//  OnlineGroceryApp
//
//  Created by Mahesh Behere on 21/05/25.
//

import SwiftUI

struct LogInView: View {
    
    @State var txtEmail:String = ""
    @State var txtPassword:String = ""
    @State var isPasswordVisible:Bool = false
    var body: some View {
        
        ZStack{
            
            Image(.bottomBg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            
            VStack(spacing: 50){
                       //Logo
                        Image(.colorLogo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65,height: 70)
                        .padding(.top, 60)
                
                
                HStack {
                    VStack(alignment: .leading,spacing: 8){
                        Text("Loging")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Enter your email and password")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                    }
                    //.frame(width: .infinity)
                    Spacer()
                }
                
                VStack(alignment: .leading,spacing: 8){
                    
                    Text("Email")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    TextField("Enter your email", text: $txtEmail)
                    Divider()
                    
                }
                
                VStack(alignment: .leading,spacing: 8){
                    Text("Password")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    HStack{
                        Group{
                            if isPasswordVisible{
                                TextField("Enter your password", text: $txtPassword)
                            }else{
                                SecureField("Enter your password", text: $txtPassword)
                            }
                        }
                        .autocapitalization(.none)
                        
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                                .foregroundColor(.gray)
                        }
                    }
                    Divider()
                    
                }
                
                
                
                    
                    VStack(alignment: .center){
                        RoundButton(title: "Log In"){
                            // Login button Tapped
                            print("Login Button Tapped")
                        }
                        
                        NavigationLink {
                            //Navigate to forgot password
                        } label: {
                            HStack(alignment: .center){
                                Text("Don't have an account?")
                                    .font(.subheadline)
                                    .underline()
                                    .foregroundStyle(.primary)
                                Text("SignUp")
                                    .foregroundStyle(.blue)
                            }
                            
                        }
                    }
                Spacer()
                }
                .padding()
                
                
            }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
            
            
        }
        
    
}

#Preview {
    LogInView()
}
