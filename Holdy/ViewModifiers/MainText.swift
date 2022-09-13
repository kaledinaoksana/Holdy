//
//  MainText.swift
//  Holdy
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import Foundation
import SwiftUI


struct MainTextLight: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
    }
}

struct MainTextBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)).weight(.semibold))
            
    }
}

struct TextSize: ViewModifier {
    
    let s: Int
    
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: CGFloat(s))))
            
    }
}
