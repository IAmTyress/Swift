//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Мас on 31.03.2020.
//  Copyright © 2020 Мас. All rights reserved.
//

import Foundation


struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
    
    static func saveToFile(emojis: [Emoji]) {
        
    }

    static func loadFromFile() {
        return
    }
}
