//
//  Styles.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 27/03/2023.
//

import SwiftUI

struct LoginButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(hex:"4FD994"))
            .cornerRadius(15.0)
        
    }
}

struct LoginButtonMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(hex:"4FD994"))
            .cornerRadius(15.0)
    }
}


struct SignUpButton: ButtonStyle {
    func makeBody(configuration: Configuration) ->
    some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(hex:"4FD994"))
            .cornerRadius(15.0)
    }
}

struct TextStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) ->
    some View {
        configuration
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .autocorrectionDisabled()
            .padding(.leading)
            .frame(width: 220, height: 40)
            .background(Color.gray.opacity(0.2))
            .foregroundColor(.primary)
            .overlay {
                RoundedRectangle(cornerRadius: 3)
                    .stroke(.black, lineWidth: 1)
            }
    }
}

struct TextStyleMensagem: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) ->
    some View {
        configuration
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .autocorrectionDisabled()
            .padding(.leading)
            .frame(width: 300, height: 200)
            .background(Color.gray.opacity(0.2))
            .foregroundColor(.primary)
            .overlay {
                RoundedRectangle(cornerRadius: 3)
                    .stroke(.black, lineWidth: 1)
            }
    }
}
