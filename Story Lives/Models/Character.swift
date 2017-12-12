//
//  Character.swift
//  Story Lives
//
//  Created by Carmine Molisso on 11/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

protocol CharacterProtocol {
    var name: String { get }
    var description: String { get }
    var avatar: Image { get }
}

struct Character: CharacterProtocol {
    
    var name: String
    var description: String
    var avatar: Image
    
    init (name: String, description: String, avatar: Image) {
        self.name = name
        self.description = description
        self.avatar = avatar
    }
    
}

