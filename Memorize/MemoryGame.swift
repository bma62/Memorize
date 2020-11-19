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
    
//    second argument is a function that can take an integer and returns a cardContent
    //the power of functional programming vs OOP
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent)
    {
        cards = Array<Card>() //an empty array
        for pairIndex in 0..<numberOfPairsOfCards //doesn't include upper limit
        {
            //if it doesn't change (vary), use let to set it to be constant (instead of var)
            let content = cardContentFactory(pairIndex)
            //append two because it's a pair
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    //put in here because it's a MemoryGame.Card for name spacing purposes (not any other cards)
    struct Card: Identifiable
    {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent //this is a don't care / generic type
        var id: Int //needs a unique identifier to be identifiable
    }
}
