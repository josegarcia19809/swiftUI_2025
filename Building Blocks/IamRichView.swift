//
//  IamRichView.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 28/12/24.
//

import SwiftUI

struct IamRichView: View {
    var body: some View {
        VStack {
            Text("I am Rich")
                .font(.custom("Helvetica", size: 56))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding()
            Spacer()
                .frame(height: 50)
            
            Image("diamond")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Spacer()
                .frame(height: 30)
            
            Label(
                title: {
                    Text(countText()) // Usamos Text() para envolver el String
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.white)
                },
                icon: {
                    Image(systemName: "star.fill") // Ícono opcional
                        .foregroundStyle(Color.white)
                }
            )
            
            Label(
                title: {
                    Text(capitalizeText())
                        .font(.system(size: 24))
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.white)
                },
                icon: {
                    Image(systemName: "heart")
                        .foregroundStyle(Color.white)
                }
            )
            
            Label(
                title: {
                    Text(lowerUpperCase())
                        .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundStyle(Color.yellow)
                }, icon: {
                    Image(systemName: "cart")
                        .foregroundStyle(Color.yellow)
                }
            )
            
            Label(
                title: {
                    Text(multilinea())
                        .font(.system(size: 16))
                        .padding()
                        .fontWeight(.black)
                        .foregroundStyle(Color.yellow)
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                },
                icon: {
                    EmptyView() // Ícono vacío
                }
            )
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("i_am_rich"))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    IamRichView()
}
