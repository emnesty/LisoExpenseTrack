//
//  SignUpView.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 29/05/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                CustomTextField(title: "Email", text: $txtEmail, keyboardType: .emailAddress, iconName: "mail-02", height: 60, width: 350)
                    .padding(.horizontal, 8)
                
                CustomTextField(title: "Senha", text: $txtPassword, isPassword: true, iconName: "mail-02", height: 60, width: 350)
                    .padding(.horizontal, 8)
                
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 30)
                
                
                PrimaryButton(title: "Realizar Cadastro", width: 350, height: 48)
                    .padding(.bottom, 150)
                
                
                Text("Você já possui uma conta?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 20)
                
                
                SecondaryButton(title: "Entrar", width: 324, height: 48)
            }
        }
    }
}

#Preview {
    SignUpView()
}
