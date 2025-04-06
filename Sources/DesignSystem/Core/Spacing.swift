//
//  Spacing.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public struct EBVSpacing {
    // Espaciado base
    public let xxs: CGFloat = 2
    public let xs: CGFloat = 4
    public let sm: CGFloat = 8
    public let md: CGFloat = 16
    public let lg: CGFloat = 24
    public let xl: CGFloat = 32
    public let xxl: CGFloat = 48
    
    // Espaciado en componentes específicos
    public let buttonPadding: EdgeInsets = EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
    public let cardPadding: EdgeInsets = EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    public let inputPadding: EdgeInsets = EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12)
    
    // Radios de borde
    public let radiusSmall: CGFloat = 4
    public let radiusMedium: CGFloat = 8
    public let radiusLarge: CGFloat = 12
    public let radiusXL: CGFloat = 16
    public let radiusCircle: CGFloat = 9999
    
    // Anchuras y alturas comunes
    public let buttonHeight: CGFloat = 50
    public let inputHeight: CGFloat = 56
    public let smallButtonHeight: CGFloat = 36
    public let iconSize: CGFloat = 24
    public let smallIconSize: CGFloat = 16
    public let largeIconSize: CGFloat = 32
    
    // Espaciado de pantalla
    public let screenEdgePadding: CGFloat = 20
    public let contentSpacing: CGFloat = 16
    public let sectionSpacing: CGFloat = 24
}
