//
//  Cardify.swift
//  Memorize
//
//  Created by HASEUNG JEON on 2020/07/19.
//  Copyright © 2020 HASEUNG JEON. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRaduis).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRaduis).stroke(lineWidth: edgeLineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRaduis).fill()
                
            }
        }
    }
    
    private let cornerRaduis: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}

