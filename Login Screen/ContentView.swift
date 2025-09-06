//
//  ContentView.swift
//  Login Screen
//
//  Created by Shanique Beckford on 9/5/25.
//

import SwiftUI
import Lottie

struct ContentView: View {
    @State var nameTextField: String = ""
    @State var userName: String = ""
    @State var password: String = ""
    @State var goToForgotPasswordScreen: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // adding animation
                LottieView(animation: .named("Welcome Animation"))
                    .playing()
                
                TextField(LocalizedStringKey("Name"), text: $nameTextField)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.asciiCapable)
                
                TextField(LocalizedStringKey ("UserName"), text: $userName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                Button("Forgot Password") {
                    goToForgotPasswordScreen = true
                }
                .buttonStyle(.plain)
                
            }
            .navigationDestination(isPresented: $goToForgotPasswordScreen, destination: {
                ForgotPasswordScreen()
            })
            .navigationTitle("Login")
            .toolbar {
                Button("Login") {
                    
                }
                .buttonStyle(.borderedProminent)
                .disabled(nameTextField.count == 0)
            }
        }
            
    }
}

#Preview {
    ContentView()
}
