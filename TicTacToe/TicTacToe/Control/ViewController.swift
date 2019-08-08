//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var player1 = true
//    var player2 = false
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }


    @IBAction func buttonPressed(_ sender: UIButton) {
        //test to see if all buttons are attached
        sender.setTitle("X", for: .normal)
    }
    
    
}

