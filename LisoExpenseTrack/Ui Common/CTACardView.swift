//
//  CTACardView.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 30/05/24.
//

import SwiftUI

struct CTACardView: View {
    var title: String
    var subtitle: String
    var iconName: String
    var width: CGFloat = 350
    var height: CGFloat = 120

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            ZStack {
                Color.BgBrandSolid
                    .frame(width: 48, height: 48)
                    .cornerRadius(10)
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            .padding(12)
            
            VStack(alignment: .leading) {
                Text(title)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(Color.textSecondary700)
                
                Text(subtitle)
                    .font(.customfont(.regular, fontSize: 14))
                    .foregroundColor(Color.textQuarterary500)
                    .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40, alignment: .topLeading)
            }
        }
        .padding(20)
        .frame(width: width, height: height, alignment: .center)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.05), radius: 1, x: 0, y: 1)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 0.5)
                .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1)
        )
    }
}

#Preview {
    CTACardView(title: "Cartão de crédito", subtitle: "Tenha total controle sobre seus gastos no seu cartão de crédito", iconName: "credit-card-02", width: 350, height: 120)
}





