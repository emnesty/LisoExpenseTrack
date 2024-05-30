//
//  UIExtensions.swift
//  LisoExpenseTrack
//
//  Created by Luciano Silva on 27/05/24.
//

import SwiftUI


// Enumeração para definir diferentes estilos de fonte da família "Inter"
enum Inter: String {
    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case semibold = "Inter-SemiBold"
    case bold = "Inter-Bold"
}

// Extensão para a classe Font para adicionar fontes personalizadas
extension Font {
    // Método estático para criar uma fonte customizada da família "Inter"
    static func customfont(_ font: Inter, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

// Extensão para a classe CGFloat para adicionar funcionalidades relacionadas às dimensões da tela
extension CGFloat {
    // Largura da tela
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    // Altura da tela
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    // Percentual da largura da tela
    static func widthPer(per: CGFloat) -> CGFloat {
        return screenWidth * per
    }
    
    // Percentual da altura da tela
    static func heightPer(per: CGFloat) -> CGFloat {
        return screenHeight * per
    }
    
    // Insets superiores seguros da área de visualização
    static var topInsets: CGFloat {
        return getCurrentWindow()?.safeAreaInsets.top ?? 0.0
    }
    
    // Insets inferiores seguros da área de visualização
    static var bottomInsets: CGFloat {
        return getCurrentWindow()?.safeAreaInsets.bottom ?? 0.0
    }
    
    // Somatório dos insets horizontais (esquerda e direita)
    static var horizontalInsets: CGFloat {
        let insets = getCurrentWindow()?.safeAreaInsets
        return (insets?.left ?? 0.0) + (insets?.right ?? 0.0)
    }
    
    // Somatório dos insets verticais (superior e inferior)
    static var verticalInsets: CGFloat {
        let insets = getCurrentWindow()?.safeAreaInsets
        return (insets?.top ?? 0.0) + (insets?.bottom ?? 0.0)
    }
    
    // Função auxiliar para obter a janela ativa (key window)
    private static func getCurrentWindow() -> UIWindow? {
        return UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene } // Obtém cenas do tipo UIWindowScene
            .flatMap { $0.windows } // Obtém todas as janelas dessas cenas
            .first { $0.isKeyWindow } // Retorna a primeira janela ativa (key window)
    }
}


extension Color {
    static var textPrimary900: Color {
        return Color(hex: "101828")
    }
    
    static var textSecondary700: Color {
        return Color(hex: "344054")
    }
    
    static var ButtonPrimaryBG: Color {
        return Color(hex: "7F56D9")
    }
    
    
    static var ButtonPrimaryFG: Color {
        return Color(hex: "FFFFFF")
    }
    
    static var ButtonSecondaryBG: Color {
        return Color(hex: "FFFFFF")
    }
    
    static var ButtonSecondaryFG: Color {
        return Color(hex: "344054")
    }
    
    static var textFieldFG: Color {
        return Color(hex: "EFF0F5")
    }
    
    static var SecondaryBorder: Color {
        return Color(hex: "D0D5DD")
    }
    
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        // Inicializa a cor com os valores de vermelho, verde, azul e opacidade
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
