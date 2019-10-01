//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by anmol rattan on 17/09/19.
//  Copyright © 2019 anmol rattan. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    
    
    private(set) var playingCards = [PlayingCard]()
    
    
    init() {
        for suit in PlayingCard.Suit.all{
            for rank in PlayingCard.Rank.all{
                playingCards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func  drawCard()-> PlayingCard?{
        
        if playingCards.count>0{
            
            return playingCards.remove(at: playingCards.count.arc4random)
        }else{
            return nil
        }
        
        
    }
    
    
    
    
    
}

extension Int{
    
    var arc4random:Int{
        if self>0{
            return Int(arc4random_uniform(UInt32(self)))
            
        }else if self<0{
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }else{
            return 0
        }
    }
}
