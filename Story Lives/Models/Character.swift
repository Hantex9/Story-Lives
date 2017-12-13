//
//  Character.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

struct Character {
    
    var name: String
    var description: String
    var avatar: UIImage
    var nodes: [Node]
    
    init (name: String, description: String, avatar: UIImage, node: [Node]) {
        self.name = name
        self.description = description
        self.avatar = avatar
        self.nodes = node
    }
    
    func getNumberOfNode() -> Int {
        return nodes.count
    }
}

