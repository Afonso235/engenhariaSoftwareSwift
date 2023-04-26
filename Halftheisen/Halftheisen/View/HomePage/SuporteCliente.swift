//
//  SuporteCliente.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 20/04/2023.
//

import SwiftUI

struct SuporteCliente: View {
    
    @State private var assunto = ""
    
    var body: some View {
        
        VStack {
            LogoView()
                .position(x: 190, y: -60)
            ZStack {
                Text("Suporte ao cliente")
                    .fontWeight(.heavy)
                    .offset(y: 250)
                Image("discount4")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(y: 280)
            }
            .offset(y: -390)
            ZStack {
                Text("geral@halftheisen.com")
                    .offset(x: -5,y: 150)
                Image("view")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: -130, y: 250)
                
                Text("+351 958 837 740")
                    .offset(x: -30, y: 200)
                Image("phone-call")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(x: -130, y: 200)
                
                Text("Rua Halftheisen, 2390-000, Coimbra")
                    .offset(x: 45,y: 250)
                Image("e")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: -130, y: 150)
            }
            .offset(y: -270)
            
            VStack{
                Text("Envie-nos a sua questão!")
                    .offset(x: -80)
                HStack {
                    Rectangle()
                        .fill(Color(hex: "BDDCCC"))
                        .frame(width: 359, height: 380)
                        .cornerRadius(20)
                        .overlay(
                            VStack{
                                TextField("Assunto: ", text: $assunto)
                                    .textFieldStyle(TextStyle())
                                    .offset(x: -40, y: -20)
                                
                                TextField("Mensagem: ", text: $assunto)
                                    .textFieldStyle(TextStyleMensagem())
                            }
                        )
                }
            }
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex:"4fd994"))
    }
    
}

struct SuporteCliente_Previews: PreviewProvider {
    static var previews: some View {
        SuporteCliente()
    }
}
