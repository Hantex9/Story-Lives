//
//  Story.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import Foundation

enum Category {
    case Story
    case Science
    //Add others category
}

protocol StoryProtocol {
    var title: String { get }
    var description: String { get }
    var thumbnail: Image { get }
    var characters: [Characters] { get set }
    var category: [Category] { get }
    var locked: Bool { get set }
    var progress: Node { get set }
}

class Story: StoryProtocol {
    
    var title: String
    var description: String
    var thumbnail: Image
    var characters: [Characters]
    var category: Category
    var locked: Bool
    var progress: Node?
    var nodes: [Node] = [] //Empty Array
    
    init (title: String, description: String, thumbnail: Image, characters: [Characters], category: Category, locked: Bool, progress: Node?) {
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
        self.characters = characters
        self.category = category
        self.locked = locked
        self.progress = progress
    }
}
