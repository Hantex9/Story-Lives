//
//  Story.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class Story {
    
    var title: String
    var description: String
    var thumbnail: UIImage
    var characters: [Character]
    var category: String
    var locked: Bool
    var progress: Node?
    var characterSelected: Character?
    var categories: [String] = ["Science","Art","History"] //Add others categories
    
    init (title: String, description: String, thumbnail: UIImage, characters: [Character], category: String, locked: Bool, progress: Node?) {
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
        self.characters = characters
        self.category = category
        self.locked = locked
        self.progress = progress
    }
    
    func getNumberOfCharacter() -> Int {
        return characters.count
    }

}

