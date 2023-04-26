//
//  HomePageView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 18/04/2023.
//

import SwiftUI

struct StockProdutos: View {
    var body: some View {
        VStack {
            
            LogoView()
                .position(x: 190, y: 30)
            
            Spacer()
                .frame(height: 100)
            ZStack{
                Rectangle()
                    .fill(Color(hex: "E3E3E3"))
                    .frame(height: 750.0)
                    .cornerRadius(50)
                VStack{
                    HStack {
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("amoras")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Amoras")
                                    .font(.system(size:13))
                            }
                        }
                        ZStack {
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("dourada")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Douradas")
                                    .font(.system(size:13))
                            }
                        }
                        ZStack {
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("meias")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Meias")
                                    .font(.system(size:13))
                            }
                        }
                    }
                    HStack {
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("peluches")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Peluches")
                                    .font(.system(size:13))
                            }
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("bicicletas")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Bicicletas")
                                    .font(.system(size:13))
                            }
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("malas")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Trolleys")
                                    .font(.system(size:13))
                            }
                        }
                    }
                    HStack {
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("pingpong")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Pack de \n Ping-pong")
                                    .font(.system(size:13))
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("cabides")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Cabides")
                                    .font(.system(size:13))
                            }
                        }
                        
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "4FD994"))
                                .frame(width: 100, height: 140)
                                .cornerRadius(20)
                            VStack {
                                Image("pastilhas")
                                    .resizable()
                                    .frame(width: 90, height: 87)
                                Text("Pastilhas\nHalftheisen")
                                    .font(.system(size:13))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
                
                Text("Stock de Produtos")
                    .fontWeight(.bold)
                    .offset(x:0, y: -345)
                    .font(.system(size: 30))
                
                Image("discount3")
                    .resizable()
                    .offset(y: -310)
                    .frame(width: 55, height: 55)
                    .offset(y:10)
                Text("Artigos temporariamente fora de stock:")
                    .offset(y: -262)
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex:"4fd994"))
    }
}



struct StockProdutos_Previews: PreviewProvider {
    static var previews: some View {
        StockProdutos()
    }
}
