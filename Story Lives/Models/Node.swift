//
//  Node.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

enum Type {
    case Normal
    case Error
    case Final
}

class Node {
    var type: Type
    var text: String
    var question: String?
    var image: UIImage
    var answers: [Answer]?
    
    init (type: Type, text: String, question: String?, image: UIImage, answers: [Answer]?) {
        self.type = type
        self.text = text
        self.question = question
        self.image = image
        self.answers = answers
    }
}
