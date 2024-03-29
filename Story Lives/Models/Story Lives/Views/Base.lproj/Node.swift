//
//  Node.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

enum Type {
    case Normal
    case Error
    case Checkpoint
    case Final
}

protocol NodeProtocol {
    var type: Type { get }
    var text: String { get }
    var question: String { get }
    var image: image { get }
}

struct Node: NodeProtocol {
    
    var type: Type
    var text: String
    var question: String?
    var image: image
    var answers: [String: NodeProtocol]?
    
    init (type: Type, text: String, question: String?, image: Image, answers: [String: NodeProtocol]?) {
        self.type = type
        self.text = text
        self.question = question
        self.image = image
        self.answers = answers
    }
    
}
