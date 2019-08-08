//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var brain = TicTacToeBrain()
    var gameActive = true
    
    
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet weak var newGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTurnLabel.isHidden = true
//        newGameButton.isHidden = true
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if brain.playerTurn ==  .one {
            
            updateTurn(title: "X", text: "Player 2, make your move!", color: .magenta, button: sender)
            brain.updatePlayerTurn()
            
        } else if brain.playerTurn ==  .two {
            
            
            updateTurn(title: "O", text: "Go for it, Player 1!", color: .blue, button: sender)
            brain.updatePlayerTurn()
        }
        
    }
    
    
    @IBAction func newGameButtonPressed(_ sender: UIButton) {
        
        playerTurnLabel.text = "Please Make a move Player 1"
        
        for num in 1...9 {
            let button = view.viewWithTag(num) as! UIButton
            button.setTitle("", for: .normal)
            button.isEnabled = true
            brain.playerTurn = .one
        }
        gameActive = true
    }
    
    func updateTurn(title: String, text: String, color: UIColor, button: UIButton) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        playerTurnLabel.text = text
        playerTurnLabel.isHidden = false
        button.isEnabled = false
    }
}

