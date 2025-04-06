//
//  ColorPalette.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public struct EBVColorPalette {
    // Colores base
    public let primary: Color
    public let secondary: Color
    public let accent: Color
    
    // Colores de fondo
    public let background: Color
    public let surface: Color
    
    // Colores de estado
    public let error: Color
    public let success: Color
    public let warning: Color
    public let info: Color
    
    // Colores de texto
    public let textPrimary: Color
    public let textSecondary: Color
    
    // Colores de UI
    public let border: Color
    
    // Variaciones de colores primarios (calculadas)
    public var primaryLight: Color {
        primary.opacity(0.8)
    }
    
    public var primaryDark: Color {
        primary.opacity(1.2)
    }
    
    // Constructor
    public init(
        primary: Color,
        secondary: Color,
        accent: Color,
        background: Color,
        surface: Color,
        error: Color,
        success: Color,
        warning: Color,
        info: Color,
        textPrimary: Color,
        textSecondary: Color,
        border: Color
    ) {
        self.primary = primary
        self.secondary = secondary
        self.accent = accent
        self.background = background
        self.surface = surface
        self.error = error
        self.success = success
        self.warning = warning
        self.info = info
        self.textPrimary = textPrimary
        self.textSecondary = textSecondary
        self.border = border
    }
    
}
