//
//  LoginViewModel.swift
//  Login Screen
//
//  Created by Shanique Beckford on 9/6/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var nameTextField: String = ""
    @Published var userName: String = ""
    @Published var password: String = ""
    @Published var goToForgotPasswordScreen: Bool = false
    
    
}
