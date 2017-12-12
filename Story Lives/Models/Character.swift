//
//  Character.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

protocol CharacterProtocol {
    var name: String { get }
    var description: String { get }
    var avatar: UIImage { get }
    var nodes: [Node] { get set }
}

class Character: CharacterProtocol {
    
    var name: String
    var description: String
    var avatar: UIImage
    var nodes: [Node]
    
    init (name: String, description: String, avatar: UIImage) {
        self.name = name
        self.description = description
        self.avatar = avatar
        nodes = []
    }
    
    mutating func addNode(type: Type, text: String, question: String?, image: UIImage, answers: [String: NodeProtocol]?) {
        let node = Node(type: type, text: text, question: question, image: image, answers: answers)
        nodes.append(node)
    }
    
}

