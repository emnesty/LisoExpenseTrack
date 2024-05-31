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
    var iconName: String
    var activeIconName: String
    var height: CGFloat = 60
    var width: CGFloat? = 350
    var showCallout: Bool = false
    var callout: String = ""
    
    @State private var isFocused: Bool = false
    @FocusState private var fieldIsFocused: Bool

    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customfont(.medium, fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.textSecondary700)
            
            HStack(spacing: 8) {
                Image(isFocused ? activeIconName : iconName)
                    .foregroundColor(.gray)
                
                if isPassword {
                    SecureField("Insira sua senha", text: $text)
                        .focused($fieldIsFocused)
                        .keyboardType(keyboardType)
                        .onChange(of: fieldIsFocused) { isFocused in
                            self.isFocused = isFocused
                        }
                } else {
                    TextField("Insira seu e-mail", text: $text)
                        .focused($fieldIsFocused)
                        .keyboardType(keyboardType)
                        .onChange(of: fieldIsFocused) { isFocused in
                            self.isFocused = isFocused
                        }
                        .onChange(of: text) {
                            isFocused = !$0.isEmpty
                        }
                }
            }
            .padding(.horizontal, 14)
            .frame(maxWidth: width ?? .infinity, minHeight: height, maxHeight: height, alignment: .leading)
            .background(Color(red: 0.94, green: 0.94, blue: 0.96))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isFocused ? Color(red: 0.84, green: 0.73, blue: 0.99) : Color.clear, lineWidth: 2)
            )
            
            if showCallout {
                Text(callout)
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.regular, fontSize: 12))
                    .frame(width: 340, height: 52, alignment: .topLeading)
                    .foregroundColor(Color.textPrimary900)
            }
        }
        .padding(.horizontal)
        .onTapGesture {
            fieldIsFocused = false
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        VStack {
            CustomTextField(text: $text, iconName: "mail-02", activeIconName: "mail-02-active", height: 60, width: 350)
            CustomTextField(text: $text, isPassword: true, iconName: "lock-01", activeIconName: "lock-01-active", height: 60, width: 350)
        }
        .padding()
    }
}
