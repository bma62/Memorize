//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Boyi Ma on 2020-11-16.
//

import SwiftUI
// a specific type of memory game that happens to use emoji
//we have a UI, a model that is UI independent, this is a ViewModel that connects the two

class EmojiMemoryGame
{
    //a memory game that uses emoji as card content
    private var model: MemoryGame<String> = MemoryGame<String>(cards: <#T##Array<MemoryGame<String>.Card>#>)

    //MARK: - Access to the model
    //the mark keyword provides headers for function and vars
    //we want to make view as simple as possible, do work in ViewModel to make it look like what its supposed to be
    var cards: Array<MemoryGame<String>.Card>
    {
        model.cards //one line return doesn't need "return" keyword
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card)
    {
        model.choose(card: card)
    }
    
}
