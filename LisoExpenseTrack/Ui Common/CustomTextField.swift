//
//  CustomTextField.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 29/05/24.
//

import SwiftUI

struct CustomTextField: View {
    
    var title: String = "Title"
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var isPassword: Bool = false
    var iconName: String = "mail-02"
    var height: CGFloat = 60
    var width: CGFloat? = 350
    
    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customfont(.medium
                                  , fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.textSecondary700)
                .padding(.bottom, 8)
            
            HStack(spacing: 8) {
                Image(iconName)
                    .foregroundColor(.gray)
                
                if isPassword {
                    SecureField("Insira sua senha", text: $text)
                        .padding(.vertical, 10)
                } else {
                    TextField("Insira seu e-mail", text: $text)
                        .keyboardType(keyboardType)
                        .padding(.vertical, 10)
                }
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 10)
            .frame(maxWidth: width ?? .infinity, minHeight: height, maxHeight: height, alignment: .leading)
            .background(Color(red: 0.94, green: 0.94, blue: 0.96))
            .cornerRadius(8)
        }
        .padding()
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        VStack {
            CustomTextField(text: $text, iconName: "mail-02", height: 60, width: 350)
            CustomTextField(text: $text, isPassword: true, iconName: "mail-02", height: 60, width: 350)
        }
        .padding()
    }
}
