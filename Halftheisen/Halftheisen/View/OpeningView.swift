//
//  OpeningView.swift
//  Halftheisen
//
//  Created by Pereira, Afonso Miguel on 20/04/2023.
//

import SwiftUI

struct OpeningView: View {
    
    let accentColor = LinearGradient(
        gradient: Gradient(colors: [Color(hex: "50D6AA"), Color(hex: "56CEE7")]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        NavigationView {
            VStack {
                LogoView()
                    .offset(x: -5, y: -90)
                VStack (spacing: 50){
                    Text("Seja bem vindo")
                    Text("Faça login para começar a \n       utilizar a nossa APP")
                    Image("strong")
                        .resizable()
                        .frame(width: 210, height: 210)
                    
                    NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)) {
                        Text("Login/Register")
                            .frame(maxWidth: .infinity)
                            .modifier(LoginButtonMod())
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(accentColor)
        }
    }
}


struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
