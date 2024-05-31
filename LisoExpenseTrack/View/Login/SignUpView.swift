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
    @State private var showSignUpSuccess: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 1)
                
                VStack {
                    Text("Realizar cadastro")
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 32, alignment: .topLeading)
                        .font(.customfont(.bold, fontSize: 24))
                        .padding(.horizontal, 8)
                        .foregroundColor(Color.textPrimary900)
                        .padding(.top, 24)
                    
                    Text("Preencha as suas informações abaixo")
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 20, alignment: .topLeading)
                        .font(.customfont(.regular, fontSize: 16))
                        .padding(.horizontal, 8)
                        .foregroundColor(Color.textQuarterary500)
                }
                .padding(.top, 16)
                
                Spacer()
                
                VStack(spacing: 35) {
                    CustomTextField(title: "Email", text: $txtEmail, keyboardType: .emailAddress, iconName: "mail-02", activeIconName: "mail-02-active", height: 52, width: 350)
                        .padding(.horizontal, 8)
                    
                    CustomTextField(title: "Senha", text: $txtPassword, isPassword: true, iconName: "lock-01", activeIconName: "lock-01-active", height: 52, width: 350, showCallout: true, callout: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                        .padding(.horizontal, 8)
                }
                
                Spacer()
                
                PrimaryButton(title: "Concluir cadastro", width: 350, height: 52, onPressed: {
                    showSignUpSuccess.toggle()
                })
                .padding(.bottom, 32)
                
                Text("Você já possui uma conta?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 8)
                
                SecondaryButton(title: "Entrar", width: 350, height: 52)
                
                Spacer()
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $showSignUpSuccess) {
                SignUpSuccessView()
            }
        }
    }
}

#Preview {
    SignUpView()
}


