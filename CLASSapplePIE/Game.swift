//
//  Game.swift
//  CLASSapplePIE
//
//  Created by Karan Gandhi on 2/23/21.
//

import Foundation


struct Game {
    
    var word : String
    var lives : Int
    var letterGuessed : [Character]
    
    
    
    var formattedWord : String {  //Computed Property

        //word = box
        // letter = b
        // if b
        // guessedWord = "b"
        
        var guessedWord  = " "
        
        for letter in word {
            
            if letterGuessed.contains(letter)
            {
                guessedWord += "\(letter)"
            }
            
            else {
                
                
                guessedWord += "_"
            }
        }
        
        return guessedWord
    
    }
    
    mutating func playerGuessed(_ letter : Character) {
        
        letterGuessed.append(letter)
        
        if !word.contains(letter){
            
            lives -= 1
            
        }
        
    }
    
}
