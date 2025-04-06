//
//  ColorTokens.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public enum EBVColorTokens {
    // Acceso conveniente a colores del tema
    public static var primary: Color {
        EBVAppTheme.shared.colors.primary
    }
    
    public static var secondary: Color {
        EBVAppTheme.shared.colors.secondary
    }
    
    public static var accent: Color {
        EBVAppTheme.shared.colors.accent
    }
    
    public static var background: Color {
        EBVAppTheme.shared.colors.background
    }
    
    public static var surface: Color {
        EBVAppTheme.shared.colors.surface
    }
    
    public static var error: Color {
        EBVAppTheme.shared.colors.error
    }
    
    public static var success: Color {
        EBVAppTheme.shared.colors.success
    }
    
    public static var warning: Color {
        EBVAppTheme.shared.colors.warning
    }
    
    public static var info: Color {
        EBVAppTheme.shared.colors.info
    }
    
    public static var textPrimary: Color {
        EBVAppTheme.shared.colors.textPrimary
    }
    
    public static var textSecondary: Color {
        EBVAppTheme.shared.colors.textSecondary
    }
    
    public static var border: Color {
        EBVAppTheme.shared.colors.border
    }
}
