//
//  Typography.swift
//  EBVUICOMPS
//
//  Created by Emerson Balahan Varona on 4/4/25.
//

import SwiftUI

public struct EBVTypography {
    // Tamaños de texto
        public let largeTitle = Font.largeTitle
        public let title = Font.title
        public let title2 = Font.title2
        public let title3 = Font.title3
        public let headline = Font.headline
        public let subheadline = Font.subheadline
        public let body = Font.body
        public let callout = Font.callout
        public let caption = Font.caption
        public let caption2 = Font.caption2
        
        // Pesos de fuente
        public func regular(_ font: Font) -> Font {
            font.weight(.regular)
        }
        
        public func medium(_ font: Font) -> Font {
            font.weight(.medium)
        }
        
        public func semibold(_ font: Font) -> Font {
            font.weight(.semibold)
        }
        
        public func bold(_ font: Font) -> Font {
            font.weight(.bold)
        }
        
        // Estilos completos comunes
        public var titleLarge: Font {
            title.weight(.bold)
        }
        
        public var titleMedium: Font {
            title2.weight(.semibold)
        }
        
        public var titleSmall: Font {
            title3.weight(.semibold)
        }
        
        public var bodyLarge: Font {
            body.weight(.medium)
        }
        
        public var bodyMedium: Font {
            body
        }
        
        public var bodySmall: Font {
            callout
        }
        
        public var labelLarge: Font {
            subheadline.weight(.semibold)
        }
        
        public var labelMedium: Font {
            subheadline
        }
        
        public var labelSmall: Font {
            caption
        }
}
