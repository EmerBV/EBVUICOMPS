//
//  EBVButtonStyle.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public enum EBVButtonStyle {
    case small
    case medium
    case large
    
    /// Altura del botón
    var height: CGFloat {
        switch self {
        case .small:
            return 36
        case .medium:
            return 50
        case .large:
            return 58
        }
    }
    
    /// Radio de las esquinas
    var cornerRadius: CGFloat {
        switch self {
        case .small:
            return 6
        case .medium:
            return 10
        case .large:
            return 12
        }
    }
    
    /// Fuente del texto del botón
    var font: Font {
        switch self {
        case .small:
            return Font.subheadline
        case .medium:
            return Font.headline
        case .large:
            return Font.title3
        }
    }
}
