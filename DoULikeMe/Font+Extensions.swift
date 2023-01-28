//
//  Font+Extensions.swift
//  DoULikeMe
//
//  Created by Vivian Phung on 1/27/23.
//

import SwiftUI

enum VoidFonts: String {
    case monumentExtended = "MonumentExtended-Regular"
    case coconatBold = "Coconat-BoldExt"
    case coconatRegular = "Coconat-Regular"
}

extension Font {
    /// Create a custom font with the given `font: CustomFont` and `size: CGFloat` that scales with
    /// the body text style.
    static func custom(font: VoidFonts, size: CGFloat, relativeTo: TextStyle) -> Font {
        return Font.custom(font.rawValue, size: size, relativeTo: relativeTo)
    }
}

func showTextBox(sizeCategory: ContentSizeCategory) -> Bool {
    switch sizeCategory {
    case .accessibilityExtraExtraExtraLarge, .accessibilityExtraExtraLarge, .accessibilityExtraLarge, .accessibilityLarge:
        return true
    default:
        return false
    }
}
