//
//  SignUpView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 27/03/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUp = false
    @State private var isEmailValid = true
    @State private var isPasswordValid = true
    @State private var errorMessage = ""
    @State private var showErrors = false
    @State private var showPassword: Bool = false
    
    struct UserData {
        var firstName: String
        var lastName: String
        var email: String
        var password: String
    }
    
    var body: some View {
        NavigationView {
            VStack (spacing: 50){
                LogoView()
                    .position(x: 190, y: 70)
                insertInfo()
                buttonSignUp()
                
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(hex: "4FD79E"), Color(hex: "55cee3")]), startPoint: .top, endPoint: .bottom))
        }
        
    }
    
    
    @ViewBuilder
    private func insertInfo() -> some View {
        VStack {
            TextField("First Name", text: $firstName)
                .textFieldStyle(TextStyle())
                .overlay(showErrors && firstName.isEmpty ? Text("First Name is required").foregroundColor(.red) : nil)
            TextField("Last Name", text: $lastName)
                .textFieldStyle(TextStyle())
                .overlay(showErrors && lastName.isEmpty ? Text("Last Name is required").foregroundColor(.red) : nil)
            
            TextField("Email", text: $email)
                .textFieldStyle(TextStyle())
                .overlay(showErrors && !isEmailValid ? Text("Invalid Email").foregroundColor(.red) : nil)
            
            SecureField("Password", text: $password)
                .textFieldStyle(TextStyle())
                .overlay(showErrors && !isPasswordValid ? Text("Invalid Password").foregroundColor(.red) : nil)
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(.caption)
                    .foregroundColor(.red)
            }
        }
    }
    
    @ViewBuilder
    private func buttonSignUp() -> some View {
        VStack {
            NavigationLink(destination: HomePageView(), isActive: $isSignUp){
                Button(action: {
                    self.isEmailValid = self.checkEmail()
                    self.isPasswordValid = self.checkPassword()
                    if self.isEmailValid && self.isPasswordValid &&
                        !self.firstName.isEmpty && !self.lastName.isEmpty {
                        // store user data for login
                        UserDefaults.standard.set(firstName, forKey: "firstName")
                        UserDefaults.standard.set(lastName, forKey: "lastName")
                        UserDefaults.standard.set(email, forKey: "email")
                        UserDefaults.standard.set(password, forKey: "password")
                        UserDefaults.standard.synchronize()
                        self.errorMessage = "Success!"
                        self.isSignUp = true
                        
                    } else {
                        self.errorMessage = "Please enter valid information. At least 8 characters, the more characters, the better.A mixture of both uppercase and lowercase letters.A mixture of letters and numbers.Inclusion of at least one special character, e.g., ! @ # ? ]"
                    }
                    self.showErrors = true
                }) {
                    Text("Sign Up")
                }
            }
            .navigationBarBackButtonHidden(true)
            .buttonStyle(SignUpButton())
        }
    }
    
    
    func checkEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func checkPassword() -> Bool {
        return password.count >= 8
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
