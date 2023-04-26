//
//  HomePageView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 18/04/2023.
//

import SwiftUI

struct Promocoes: View {
    var body: some View {
        VStack {
            
            LogoView()
                .position(x: 190, y: 35)
            Spacer()
                .frame(height: 100)
            ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 750.0)
                    .cornerRadius(50)
                VStack{
                    HStack {
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 108, height: 103)
                                .cornerRadius(20)
                            Image("frutas")
                                .resizable()
                                .frame(width: 90, height: 87)
                        }
                        Rectangle()
                            .fill(Color(hex: "BDDCCC"))
                            .frame(width: 227, height: 103)
                            .cornerRadius(20)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Fruta")
                                        Text("30% de desconto em frutas")
                                            .font(.system(size:13))
                                    }
                                }
                                
                            )
                        
                    }
                    HStack {
                        Rectangle()
                            .fill(Color(hex: "BDDCCC"))
                            .frame(width: 227, height: 103)
                            .cornerRadius(20)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Plantas")
                                        Text("Na compra de uma planta oferecemos outra")
                                            .font(.system(size: 13))
                                    }
                                }
                                
                            )
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 108, height: 103)
                                .cornerRadius(20)
                            Image("planta")
                                .resizable()
                                .frame(width: 90, height: 87)
                        }
                    }
                    HStack {
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 108, height: 103)
                                .cornerRadius(20)
                            Image("legumes")
                                .resizable()
                                .frame(width: 90, height: 87)
                        }
                        
                        Rectangle()
                            .fill(Color(hex: "BDDCCC"))
                            .frame(width: 227, height: 103)
                            .cornerRadius(20)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Legumes")
                                        Text("15% desconto em legumes")
                                            .font(.system(size: 13))
                                    }
                                }
                                
                            )
                        
                    }
                    HStack {
                        Rectangle()
                            .fill(Color(hex: "BDDCCC"))
                            .frame(width: 227, height: 103)
                            .cornerRadius(20)
                            .overlay(
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Sumos")
                                        Text("10€ desconto em todos os sumos")
                                            .font(.system(size: 13))
                                    }
                                }
                                
                            )
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 108, height: 103)
                                .cornerRadius(20)
                            Image("sumos")
                                .resizable()
                                .frame(width: 90, height: 87)
                        }
                    }
                }
                
                Text("Promoções")
                    .fontWeight(.bold)
                    .offset(x:0, y: -320)
                    .font(.system(size: 30))
                
                Image("discount1")
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



struct Promocoes_Previews: PreviewProvider {
    static var previews: some View {
        Promocoes()
    }
}
