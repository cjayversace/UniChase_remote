//
//  LoginScreen.swift
//  UniChase
//
//  Created by CJ Seigler on 7/20/23.
//

import SwiftUI
import Firebase

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .navigationBarBackButtonHidden(true) 

            TextField("Student Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Login") {
                loginButtonTapped()
               
            }
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
        .padding()
    }

    private func loginButtonTapped() {
        // Perform login logic here
        // For example, you can check if the entered email and password are valid.
        // If the login is successful, you can perform any necessary actions or navigate to another view.
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
