//
//  Player.swift
//  Assignment_1
//
//  Created by Joshua Ma on 4/17/16.
//  Copyright © 2016 Joshua Ma. All rights reserved.
//

import UIKit

struct Player{
    var name: String?
    var game: String?
    var rating: Int?
    
    init(name: String?, game: String?, rating: Int){
        self.name = name
        self.game = game
        self.rating = rating
    }
}

