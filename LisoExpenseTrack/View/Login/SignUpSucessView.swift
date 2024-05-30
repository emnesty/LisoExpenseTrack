//
//  SignUpSucessView.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 29/05/24.
//

import SwiftUI

struct SignUpSucessView: View {
    var body: some View {
        ZStack {
            VStack {
                
                Image("icon-mail")
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 180)
                
                Text("Verifique o seu email")
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.bold, fontSize: 30))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 8)
                
                Text("Enviamos um link de verificação para o seu email.")
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 30)
                
                
                Spacer()
                
                PrimaryButton(title: "Realizar Login", width: 350, height: 48)
                    .padding(.bottom, 16)
                
            }
        }
    }
}

#Preview {
    SignUpSucessView()
}
