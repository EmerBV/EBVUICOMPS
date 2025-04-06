//
//  EBVPrimaryButton.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public struct EBVPrimaryButton: View {
    private let title: String
    private let isLoading: Bool
    private let isEnabled: Bool
    private let action: () -> Void
    private let style: EBVButtonStyle
    
    private init(
        title: String,
        isLoading: Bool = false,
        isEnabled: Bool = true,
        style: EBVButtonStyle = .medium,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.isLoading = isLoading
        self.isEnabled = isEnabled
        self.style = style
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            if isEnabled && !isLoading {
                action()
            }
        }) {
            ZStack {
                // Fondo del botón
                RoundedRectangle(cornerRadius: style.cornerRadius)
                    .fill(backgroundColor)
                
                // Contenido - texto o indicador de carga
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.2)
                } else {
                    Text(title)
                        .font(style.font)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
            }
            .frame(height: style.height)
            .animation(.easeInOut(duration: 0.2), value: isEnabled)
            .animation(.easeInOut(duration: 0.2), value: isLoading)
        }
        .disabled(!isEnabled || isLoading)
        .accessibilityLabel(title)
        .accessibilityHint(isEnabled ? "Doble toque para activar" : "Botón deshabilitado")
    }
    
    private var backgroundColor: Color {
        if !isEnabled {
            return Color.gray.opacity(0.5)
        }
        return EBVColorTokens.primary
    }
    
}

