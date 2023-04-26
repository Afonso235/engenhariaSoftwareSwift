//
//  SquareButtonView.swift
//  Halftheisen
//
//  Created by Almeida, Bernardo Henriques on 23/03/2023.
//

import SwiftUI

struct SquareButtonView<Destination: View>: View {
    let title: String
    let color: Color
    let image: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.bottom, 50.0)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.width / 3)
                .background(color)
                .cornerRadius(20)
                .overlay(
                    Image(image)
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50) // Set the size of the image to your preference
                        .padding(10) // Add some padding around the image
                        .foregroundColor(.black)
                        .offset(x: UIScreen.main.bounds.width / 100, y: UIScreen.main.bounds.height / 35) // Adjust the position of the image
                )
        }
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(20)
    }
}


struct SquareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SquareButtonView(title: "Historico de promoçoes", color: .cyan, image: "discount1", destination: Promocoes())
    }
}
