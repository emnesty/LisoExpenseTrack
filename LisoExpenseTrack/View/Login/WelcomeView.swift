//
//  WelcomeView.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 27/05/24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showSignUp: Bool = false
    @State private var showSignIn: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                VStack {
                    CTACardView(title: "Cartão de crédito", subtitle: "Tenha total controle sobre seus gastos no seu cartão de crédito.", iconName: "credit-card-02", width: 350, height: 120)
                    
                    CTACardView(title: "Controle financeiro", subtitle: "Controle seus gastos e se programe para o futuro.", iconName: "piggy-bank-01", width: 350, height: 120)
                }
                
                
                
                Spacer()
                
//                Text("Controle financeiro inteligente e descomplicado")
//                    .multilineTextAlignment(.leading)
//                    .frame(width: 350, height: 60, alignment: .topLeading)
//                    .font(.customfont(.medium, fontSize: 24))
//                    .padding(.horizontal, 8)
//                    .foregroundColor(Color.textPrimary900)
//                    .padding(.bottom, 54)
                
                PrimaryButton(title: "Começar", width: 350, height: 52, onPressed: {
                    showSignUp.toggle()
                })
                .padding(.bottom, 16)
                
                SecondaryButton(title: "Já possuo uma conta", width: 350, height: 52, onPressed: {
                    showSignIn.toggle()
                })
                .padding(.bottom, 48)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $showSignUp) {
                SignUpView()
            }
//            .navigationDestination(isPresented: $showSignIn) {
//                SignInView()
//            }
        }
    }
}

#Preview {
    WelcomeView()
}
