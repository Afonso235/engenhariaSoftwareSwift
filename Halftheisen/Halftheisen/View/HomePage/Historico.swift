//
//  Historico.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 20/04/2023.
//

import SwiftUI

struct Historico: View {
    func getHistoricoText() -> some View {
        VStack(alignment: .leading){
            Text("15 de Março")
            Text("2kg de cenouras ----------------------------- 2,18€")
                .font(.system(size:13))
                .padding(.top, 5)
            Text("1 pacote de bolachas de chocolate ----------- 1,99€")
                .font(.system(size:13))
                .padding(.top, 1)
            Text("6 pães --------------------------------------- 0,74€")
                .font(.system(size:13))
                .padding(.top, 1)
            
            Text("10 de Março")
                .padding(.top, 10)
            Text("500g de tomate ------------------------------ 3,21€")
                .font(.system(size:13))
                .padding(.top, 5)
            Text("1,5kg de carne ------------------------------- 8,38€")
                .font(.system(size:13))
                .padding(.top, 1)
            Text("2 pacotes de batatas fritas ------------------- 0,74€")
                .font(.system(size:13))
                .padding(.top, 1)
        }
    }
    
    func getSecondHistoricoText() -> some View {
        VStack(alignment: .leading){
            Text("9 de Março")
                .padding(.top, 10)
            Text("1 salada -------------------------------------- 2,18€")
                .font(.system(size:13))
                .padding(.top, 5)
            Text("2 pimentos vermelhos ------------------------ 1,99€")
                .font(.system(size:13))
                .padding(.top, 1)
            Text("1 pimento verde ------------------------------ 0,74€")
                .font(.system(size:13))
                .padding(.top, 1)
            Text("4 cebolas roxas ------------------------------- 1,51€")
                .font(.system(size:13))
                .padding(.top, 1)
            Text("2,5kg de salmão ------------------------------ 6,24€")
                .font(.system(size:13))
                .padding(.top, 1)
            
            Text("27 de fevereiro")
                .padding(.top, 10)
            Text("1 vassoura ----------------------------------- 8,49€")
                .font(.system(size:13))
                .padding(.top, 5)
            Text("1 balde --------------------------------------- 2,99€")
                .font(.system(size:13))
                .padding(.top, 1)
        }
    }
    
    
    var body: some View {
        VStack {
            
            LogoView()
                .position(x: 190, y: 30)
            
            Spacer()
                .frame(height: 100)
            ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 750.0)
                    .cornerRadius(50)
                VStack{
                    HStack {
                        Rectangle()
                            .fill(Color(hex: "BDDCCC"))
                            .frame(width: 359, height: 580)
                            .cornerRadius(20)
                            .overlay(
                                VStack{
                                    getHistoricoText()
                                        .offset(y: -20)
                                    getSecondHistoricoText()
                                        .offset(y: -20)
                                }
                            )
                    }
                }
                .padding(.top, 110)
                
                Text("Histórico de Compras")
                    .fontWeight(.bold)
                    .offset(x:0, y: -320)
                    .font(.system(size: 30))
                
                Image("discount2")
                    .resizable()
                    .offset(y: -280)
                    .frame(width: 57, height: 44)
                    .offset(y:10)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex:"4fd994"))
    }
}




struct Historico_Previews: PreviewProvider {
    static var previews: some View {
        Historico()
    }
}
