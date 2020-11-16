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
    
    //put in here because it's a MemoryGame.Card for name spacing purposes (not any other cards)
    struct Card
    {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent //this is a don't care / generic type
        
    }
}
