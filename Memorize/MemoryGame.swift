//
//  MemoryGame.swift
//  Memorize
//
//  Created by Boyi Ma on 2020-11-15.
//

import Foundation


struct MemoryGame <CardContent>
{
    var cards: Array<Card>
    
    func choose(card: Card)
    {
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int)
    {
        cards = Array<Card>() //an empty array
        for pairIndex in 0..<numberOfPairsOfCards //doesn't include upper limit
        {
            var content = ...
            //append two because it's a pair
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
    //put in here because it's a MemoryGame.Card for name spacing purposes (not any other cards)
    struct Card
    {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent //this is a don't care / generic type
    }
}
