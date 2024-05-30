//
//  WelcomeView.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 27/05/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(Color.textPrimary900)
                    .padding(.bottom, 30)
                
                
                PrimaryButton(title: "Começar", width: 350, height: 60)
                    .padding(.bottom, 16)
                
                
                SecondaryButton(title: "Já possuo uma conta", width: 350, height: 60)
                    .padding(.bottom, 16)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
