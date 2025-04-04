// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EBVUICOMPS",
    products: [
        // Componentes básicos de UI
        .library(
            name: "ButtonKit",
            targets: ["ButtonKit"]
        ),
        .library(
            name: "InputKit",
            targets: ["InputKit"]
        ),
        .library(
            name: "FeedbackKit",
            targets: ["FeedbackKit"]
        ),
        .library(
            name: "BadgeKit",
            targets: ["BadgeKit"]
        ),
        
        // Sistema de diseño
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        ),
        
        // Componentes complejos
        .library(
            name: "CardKit",
            targets: ["CardKit"]
        ),
        .library(
            name: "ListKit",
            targets: ["ListKit"]
        ),
        .library(
            name: "VisualsKit",
            targets: ["VisualsKit"]
        ),
        
        // Patrones de pantalla y formularios
        .library(
            name: "LayoutKit",
            targets: ["LayoutKit"]
        ),
        .library(
            name: "FormKit",
            targets: ["FormKit"]
        ),
        
        // Extensiones y utilidades
        .library(
            name: "Extensions",
            targets: ["Extensions"]
        ),
    ],
    
    dependencies: [
        // Dependencias externas
    ],
    
    targets: [
        // Componentes básicos de UI
        .target(
            name: "ButtonKit",
            dependencies: ["DesignSystem"]
        ),
        .target(
            name: "InputKit",
            dependencies: ["DesignSystem"]
        ),
        .target(
            name: "FeedbackKit",
            dependencies: ["DesignSystem"]
        ),
        .target(
            name: "BadgeKit",
            dependencies: ["DesignSystem"]
        ),
        
        // Sistema de diseño
        .target(
            name: "DesignSystem",
            dependencies: ["Extensions"]
        ),
        
        // Componentes complejos
        .target(
            name: "CardKit",
            dependencies: [
                "DesignSystem",
                "ButtonKit",
                "BadgeKit"
            ]
        ),
        .target(
            name: "ListKit",
            dependencies: [
                "DesignSystem",
                "BadgeKit"
            ]
        ),
        .target(
            name: "VisualsKit",
            dependencies: ["DesignSystem"]
        ),
        
        // Patrones de pantalla y formularios
        .target(
            name: "LayoutKit",
            dependencies: ["DesignSystem"]
        ),
        .target(
            name: "FormKit",
            dependencies: [
                "DesignSystem",
                "InputKit"
            ]
        ),
        
        // Extensiones y utilidades
        .target(
            name: "Extensions",
            dependencies: []
        ),
        
        // Tests
        .testTarget(
            name: "EBVUICOMPSTests",
            dependencies: [
                "ButtonKit",
                "InputKit",
                "FeedbackKit"
            ]
        ),
    ]
)
