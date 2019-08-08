//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
    enum Player {
        case one
        case two
        mutating func toggle() {
            switch self {
            case .one: self = .two
            case .two: self = .one
            }
        }
    }
    
}
