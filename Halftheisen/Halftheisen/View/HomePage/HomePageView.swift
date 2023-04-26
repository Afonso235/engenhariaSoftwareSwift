//
//  HomePageView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 27/03/2023.
//

import SwiftUI

struct HomePageView: View {
    
    @State var logout = false
    
    var body: some View {
        NavigationView {
            VStack {
                LogoView()
                    .position(x: 190, y: 45)
                Spacer()
                    .frame(height: 100)
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 750.0)
                        .cornerRadius(50)
                    
                    Text("Os teus cartões")
                        .fontWeight(.bold)
                        .offset(x:-50, y: -320)
                        .font(.system(size: 30))
                    
                    Image("card")
                        .resizable()
                        .offset(y: -150)
                        .frame(width: 360, height: 246)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Cartão 1")
                            .foregroundColor(.black)
                    })
                    
                    
                    VStack(spacing: 30.0) {
                        HStack(spacing: 20) {
                            SquareButtonView(title: "Promoções", color: Color(hex:"4fd994"), image: "discount1", destination: Promocoes())
                            SquareButtonView(title: "Histórico \nde compras", color: Color(hex:"4fd994"), image: "discount2",destination: Historico())
                        }
                        HStack(spacing: 20) {
                            SquareButtonView(title: "Stock de produto", color: Color(hex:"4fd994"), image: "discount3", destination: StockProdutos())
                            SquareButtonView(title: "Suporte ao cliente", color: Color(hex:"4fd994"), image: "discount4", destination: SuporteCliente())
                        }
                    }
                    .position(x: 180, y: 520)
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex:"4fd994"))
        }
        .hideBackButton()
    }
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
