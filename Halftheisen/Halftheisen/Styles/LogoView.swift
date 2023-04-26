//
//  LogoView.swift
//  Halftheisen
//
//  Created by Pereira, Afonso Miguel on 20/04/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack{
            
            ZStack {
                Image("imageLogo")
                    .frame(width: 204, height: 128)
                    .opacity(0.65)
                Text("Halftheisen")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .fixedSize()
                    .font(.custom("HindKochi-Regular", size: 32))
                    .offset(x: 10, y: 15)
            }
        }
        //        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //        .background(Color(hex:"4fd994"))
    }
    
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
