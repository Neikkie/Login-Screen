//
//  ContentView.swift
//  Login Screen
//
//  Created by Shanique Beckford on 9/5/25.
//

import SwiftUI

struct ContentView: View {
    @State var nameTextField: String = ""
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField(LocalizedStringKey("Name"), text: $nameTextField)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                TextField(LocalizedStringKey ("UserName"), text: $userName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                
            }
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
