//
//  ContentView.swift
//  Login Screen
//
//  Created by Shanique Beckford on 9/5/25.
//

import SwiftUI
import Lottie

struct ContentView: View {

   @StateObject var loginViewModel: LoginViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // adding animation
                LottieView(animation: .named("Welcome Animation"))
                    .playing()
                
                TextField(LocalizedStringKey("Name"), text: $loginViewModel.nameTextField)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.asciiCapable)
                
                TextField(LocalizedStringKey ("UserName"), text: $loginViewModel.userName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $loginViewModel.password)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                Button("Forgot Password") {
                    loginViewModel.goToForgotPasswordScreen = true
                }
                .buttonStyle(.plain)
                
            }
            .navigationDestination(isPresented: $loginViewModel.goToForgotPasswordScreen, destination: {
                ForgotPasswordScreen()
            })
            .navigationTitle("Login")
            .toolbar {
                Button("Login") {
                    
                }
                .buttonStyle(.borderedProminent)
                .disabled(loginViewModel.nameTextField.count == 0)
            }
        }
            
    }
}

#Preview {
    ContentView(loginViewModel: LoginViewModel())
}
