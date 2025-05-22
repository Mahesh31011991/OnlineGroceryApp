//
//  ForgotPasswordView.swift
//  OnlineGroceryApp
//
//  Created by Mahesh Behere on 21/05/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email: String = "imshuvo97@gmail.com"
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                Image(.bottomBg)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    
                    // App Icon (Carrot)
                    Image(systemName: "carrot.fill") // Replace with your asset image
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.top, 40)
                        .foregroundColor(.orange)
                    
                    // Title & Subtitle
                    HStack() {
                        VStack(alignment: .leading){
                            Text("Loging") // Typo preserved from screenshot
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Text("Enter your emails and password")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    //.frame(width: .infinity)
                    
                    // Email Field
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        TextField("Email", text: $email)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .padding(.vertical, 8)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                    }
                    
                    // Password Field
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Password")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        HStack {
                            Group {
                                if isPasswordVisible {
                                    TextField("Password", text: $password)
                                } else {
                                    SecureField("Password", text: $password)
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
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                    }
                    
                    // Forgot Password Link
                    HStack {
                        Spacer()
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forgot Password?")
                                .font(.footnote)
                                .foregroundColor(.black)
                        }
                    }
                    
                    // Login Button
                    Button(action: {
                        // Handle login action
                    }) {
                        Text("Log In")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                    
                    // Signup Link
                    HStack(spacing: 4) {
                        Text("Don’t have an account?")
                            .font(.footnote)
                            .foregroundColor(.black)
                        
                        Button(action: {
                            // Handle sign up navigation
                        }) {
                            Text("Singup") // Typo preserved
                                .font(.footnote)
                                .foregroundColor(.green)
                                .bold()
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    }
}



#Preview {
    ForgotPasswordView()
}
