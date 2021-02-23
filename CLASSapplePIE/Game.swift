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
    
    
    
    
    mutating func playerGuessed(_ letter : Character) {
        
        
        if !word.contains(letter){
            
            lives -= 1
            
        }
        
    }
    
}
