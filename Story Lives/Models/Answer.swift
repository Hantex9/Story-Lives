//
//  Answer.swift
//  Story Lives
//
//  Created by Carmine Molisso on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class Answer {
    var text: String
    var pointer: Node?
    
    init (text: String, pointer: Node? = nil){
        self.text = text
        if let destination = pointer {
            self.pointer = destination
        }
    }
}
