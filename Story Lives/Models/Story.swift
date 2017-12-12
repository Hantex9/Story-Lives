//
//  Story.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

enum Category {
    case Story
    case Science
    //Add others category
}

protocol StoryProtocol {
    var title: String { get }
    var description: String { get }
    var thumbnail: UIImage { get }
    var characters: [Character] { get set }
    var category: Category { get }
    var locked: Bool { get set }
    var progress: Node? { get set }
}

class Story: StoryProtocol {
    
    var title: String
    var description: String
    var thumbnail: UIImage
    var characters: [Character]
    var category: Category
    var locked: Bool
    var progress: Node?
    var nodes: [Node] = [] //Empty Array
    
    init (title: String, description: String, thumbnail: UIImage, characters: [Character], category: Category, locked: Bool, progress: Node?) {
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
        self.characters = characters
        self.category = category
        self.locked = locked
        self.progress = progress
    }
    
    func addNode(type: Type, text: String, question: String?, image: UIImage, answers: [String: NodeProtocol]?) {
        let node = Node(type: type, text: text, question: question, image: image, answers: answers)
        nodes.append(node)
    }
}

