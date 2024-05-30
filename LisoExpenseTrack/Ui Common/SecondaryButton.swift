//
//  PrimaryButton.swift
//  Trackzier
//
//  Created by Luciano Silva on 21/05/24.
//

import SwiftUI

struct SecondaryButton: View {
    // Variáveis de estado e propriedades da estrutura
    var title: String = "Title" // Apenas uma propriedade normal
    var width: CGFloat = 398 // Propriedade para a largura do botão
    var height: CGFloat = 48 // Propriedade para a altura do botão
    var onPressed: (() -> Void)? // Um fechamento opcional que será chamado quando o botão for pressionado

    var body: some View {
        // Definição do conteúdo visual da estrutura
        Button(action: {
            onPressed?() // Chama a ação onPressed se ela estiver definida
        }) {
            HStack(alignment: .center, spacing: 16) {
                Text(title)
                    .foregroundColor(Color.ButtonSecondaryFG)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .frame(width: width, height: height, alignment: .center)
            .background(Color.ButtonSecondaryBG)
            .cornerRadius(8)
            .overlay(
            RoundedRectangle(cornerRadius: 8)
            .inset(by: 0.5)
            .stroke(Color.SecondaryBorder, lineWidth: 1)
            )
        }
    }
}

// Pré-visualização do botão no Xcode
struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton(width: 324, height: 48)
    }
}
