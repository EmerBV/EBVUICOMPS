//
//  AppTheme.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public final class EBVAppTheme {
    /// Instancia compartida del tema de la aplicación
    public static let shared = EBVAppTheme()
    
    /// El modo de color actual (claro u oscuro)
    @Published public private(set) var colorScheme: ColorScheme = .light
    
    /// Paleta de colores para el tema actual
    public var colors: EBVColorPalette {
        isDarkMode ? darkColorPalette : lightColorPalette
    }
    
    /// Sistema tipográfico
    public let typography = EBVTypography()
    
    /// Sistema de espaciado y dimensiones
    public let spacing = EBVSpacing()
    
    /// Indica si se está usando el modo oscuro
    public var isDarkMode: Bool {
        colorScheme == .dark
    }
    
    // Paletas de color para modos claro y oscuro
    private let lightColorPalette = EBVColorPalette(
        primary: Color.blue,
        secondary: Color.gray,
        accent: Color.indigo,
        background: Color(.systemBackground),
        surface: Color(.secondarySystemBackground),
        error: Color.red,
        success: Color.green,
        warning: Color.orange,
        info: Color.blue,
        textPrimary: Color.primary,
        textSecondary: Color(.secondaryLabel),
        border: Color(.separator)
    )
    
    private let darkColorPalette = EBVColorPalette(
        primary: Color.blue,
        secondary: Color.gray,
        accent: Color.indigo,
        background: Color(.systemBackground),
        surface: Color(.secondarySystemBackground),
        error: Color.red,
        success: Color.green,
        warning: Color.orange,
        info: Color.blue,
        textPrimary: Color.primary,
        textSecondary: Color(.secondaryLabel),
        border: Color(.separator)
    )
    
    private init() {}
    
    /// Actualiza el esquema de colores basado en el entorno
    public func updateColorScheme(_ scheme: ColorScheme) {
        self.colorScheme = scheme
    }
    
}
