//
//  Data.swift
//  Story Lives
//
//  Created by Carmine Molisso on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

let node1 = Node(type: .Final, text: "", question: "", image: #imageLiteral(resourceName: "images"), answers: [Answer(text: "One"), Answer(text: "Two", pointer: node2)])
let node2 = Node(type: .Normal, text: "", question: "", image: #imageLiteral(resourceName: "images"), answers: nil)
let node3 = Node(type: .Normal, text: "", question: "", image: #imageLiteral(resourceName: "images"), answers: [Answer(text: "One", pointer: node1), Answer(text: "Two", pointer: node2)])
let node4 = Node(type: .Normal, text: "", question: "", image: #imageLiteral(resourceName: "images"), answers: [Answer(text: "One", pointer: node1), Answer(text: "Two", pointer: node2)])

