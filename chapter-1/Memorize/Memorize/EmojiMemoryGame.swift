//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by HASEUNG JEON on 2020/07/18.
//  Copyright © 2020 HASEUNG JEON. All rights reserved.
//

import Foundation


class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "😀", "😇", "😂", "😅", "😆", "🥰", "😘", "😍"]
        return MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
            
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
