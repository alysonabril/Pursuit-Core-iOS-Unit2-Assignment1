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
    
    
    @IBOutlet weak var playerTurnLabel: UILabel!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
  }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if brain.playerTurn ==  .one {
            
            updateTurn(title: "X", text: "Go for it, Player 1!", color: .blue, button: sender)
            brain.updatePlayerTurn()
            
        } else if brain.playerTurn ==  .two {
            
            updateTurn(title: "O", text: "Player 2, make your move!", color: .magenta, button: sender)
            brain.updatePlayerTurn()
        }
        
    }
    
    func updateTurn(title: String, text: String, color: UIColor, button: UIButton) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        playerTurnLabel.text = text
        button.isEnabled = false
        
    }
}

