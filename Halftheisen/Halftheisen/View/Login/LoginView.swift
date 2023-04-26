//
//  LoginView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 27/03/2023.
//

import SwiftUI
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showAlert = false
    @State private var isLoggedIn = false
    @State private var isSignUp = false
    var body: some View {
        NavigationStack {
            ZStack {
                LogoView()
                    .offset(y: -300)
                
                //Color(uiColor: .red)
                VStack(spacing: 100) {
                    insertCredentials()
                    validateCredentials()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color(hex: "4FD79E"), Color(hex: "55cee3")]), startPoint: .top, endPoint: .bottom))
        }
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder private func insertLogo() -> some View {
        VStack {
            Image("logo")
            Text("Halftheisen")
            VStack{
                Text("Login SignUp")
            }
            .foregroundColor(.black)
            .padding(.top, 100)
            
        }
        .padding(.bottom, 600)
    }
    
    @ViewBuilder private func validateCredentials() -> some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(TextStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(TextStyle())
            
            NavigationLink(destination: HomePageView(), isActive: $isLoggedIn){
                Button(action: {
                    let email = UserDefaults.standard.string(forKey: "email")
                    let password = UserDefaults.standard.string(forKey: "password")
                    if email == self.email && password == self.password {
                        self.isLoggedIn = true
                    } else {
                        self.showAlert = true
                    }
                }) {
                    Text("Login")
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong Credentials"),
                      message: Text("Please check your email and password"),
                      dismissButton: .default(Text("Ok")))
            }
            .navigationBarBackButtonHidden(true)
            .frame(maxWidth: .infinity)
            .buttonStyle(LoginButton())
            
            NavigationLink(destination: SignUpView(), isActive: $isSignUp){
                Button(action: {
                    self.isSignUp = true
                }) {
                    Text("Sign up")
                }
            }
            .buttonStyle(SignUpButton())
        }
    }
    @ViewBuilder private func insertCredentials() -> some View {
        VStack {
            
            
        }
        
    }
    
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .frame(width: 250.0)
            .previewLayout(.sizeThatFits)
        
        
    }
    
}


