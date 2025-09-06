//
//  ForgotPasswordScreen.swift
//  Login Screen
//
//  Created by Shanique Beckford on 9/6/25.
//
import SwiftUI

struct ForgotPasswordScreen: View {
    
    @State var email: String = ""
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                
                    Text("Enter your email address")
                   
                
            
                TextField(LocalizedStringKey("Email"), text: $email)
                    .textFieldStyle(.roundedBorder)
                    .textContentType(.emailAddress)
                
                Spacer()
                    
                
            }
            .navigationTitle("Forgot Password ")
            .padding()
                
        }
        
    }
        
    
}
#Preview{
    ForgotPasswordScreen()
}
