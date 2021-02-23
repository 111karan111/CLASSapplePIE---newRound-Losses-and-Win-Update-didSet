//
//  ViewController.swift
//  CLASSapplePIE
//
//  Created by Karan Gandhi on 2/23/21.
//

import UIKit

class ViewController: UIViewController

{

    
    @IBOutlet weak var imageOutput: UIImageView!
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWordLabel: UILabel!
    
    
    @IBOutlet var letterButton: [UIButton]!

    
    
    var currentGame : Game!
    
    var listOfWords = ["box", "cheese", "butter"]
    
    var lives = 7
    var wins = 0
    
    {
        didSet{
            newRound()
        }
    }
    var losses = 0
    {
        didSet {
            newRound()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        newRound()
    }
    
    
    func newRound(){
        
        
        let word = listOfWords.removeFirst()
        currentGame = Game(word: word, lives: lives, letterGuessed: [])
        
        
        
        
        updateUI()
    }

    
    func updateUI(){
        
        imageOutput.image = UIImage(named: "Tree \(currentGame.lives)")
        scoreLabel.text = "Wins \(wins) and Losses \(losses)"
        correctWordLabel.text = currentGame.formattedWord
    
        
        
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        
        currentGame.playerGuessed(letter)
        
        
        updateGame()
        
    }
    
    func updateGame(){
        
        if currentGame.lives == 0 {
            losses += 1
            
        }
        
       else if currentGame.word == currentGame.formattedWord{
            wins += 1
        }
        
        
       else {
        
        updateUI()
        
       }
        
    }
    

}

