//
//  PrimaryButton.swift
//  Trackzier
//
//  Created by Luciano Silva on 21/05/24.
//

import SwiftUI

struct PrimaryButton: View {
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
                    .foregroundColor(Color.ButtonPrimaryFG)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .frame(width: width, height: height, alignment: .center)
            .background(Color.ButtonPrimaryBG)
            .cornerRadius(8)
        }
    }
}

// Pré-visualização do botão no Xcode
struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(width: 324, height: 48)
    }
}
