//
//  Data.swift
//  Story Lives
//
//  Created by Carmine Molisso on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//



//CATEGORIES OF THE STORIES
let categories: [String] = ["History"] //Add others categories


// NODE STORY CHARCTER ONE
let answerOne = Answer(text: "Conosci", pointer: nodeTwo)
let answerTwo = Answer(text: "Non mi importa", pointer: nodeFour)
let answerThree = Answer(text: "Ricorda", pointer: nodeThree)
let answerFour = Answer(text: "Dormi", pointer: nodeFour)
let answerFive = Answer(text: "Vai a scuola", pointer: nodeFive)
let answerSix = Answer(text: "Salta la scuola", pointer: nodeSix)
let answerSeven = Answer(text: "Torna a casa", pointer: nodeSeven)
let answerEight = Answer(text: "Gioca con gli amici", pointer: nodeEight)
let answerNine = Answer(text: "Guarda le stelle", pointer: nodeNine)
let answerTen = Answer(text: "Vai verso il rumore",pointer: nodeHappyFinal)
let answerEleven = Answer(text: "Vai a letto", pointer: nodeSadFinal)

let nodeHappyFinal = Node(type: .Final, text: "happy final", question: "", image: #imageLiteral(resourceName: "images"), answers: [])
let nodeSadFinal = Node(type: .Final, text: "sad final", question: "", image: #imageLiteral(resourceName: "images"), answers: [])
let nodeNine = Node(type: .Normal, text: "nodo 9", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerTen, answerEleven])
let nodeEight = Node(type: .Normal, text: "nodo 8", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven, answerTen])
let nodeSeven = Node(type: .Normal, text: "nodo 7", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerEleven, answerNine])
let nodeSix = Node(type: .Normal, text: "nodo 6", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven, answerEight])
let nodeFive = Node(type: .Normal, text: "nodo 5", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven, answerEight])
let nodeFour = Node(type: .Normal, text: "nodo 4", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerFive, answerSix])
let nodeThree = Node(type: .Normal, text: "nodo 3", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerFive, answerSix])
let nodeTwo = Node(type: .Normal, text: "nodo 2", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerThree, answerFour])
let nodeOne = Node(type: .Normal, text: "nodo 1", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerOne, answerTwo])

let arrayCharacterOne = [nodeOne, nodeTwo, nodeThree, nodeFour, nodeFive, nodeSix, nodeSeven, nodeEight, nodeNine, nodeSadFinal, nodeHappyFinal]

let characterOne = Character(name: "Est", description: "character description", avatar: #imageLiteral(resourceName: "images"), node: arrayCharacterOne)

// NODE STORY CHARCTER TWO
let answerOne2 = Answer(text: "Conosci", pointer: nodeTwo2)
let answerTwo2 = Answer(text: "Non mi importa", pointer: nodeFour2)
let answerThree2 = Answer(text: "Ricorda", pointer: nodeThree2)
let answerFour2 = Answer(text: "Dormi", pointer: nodeFour2)
let answerFive2 = Answer(text: "Vai a scuola", pointer: nodeFive2)
let answerSix2 = Answer(text: "Salta la scuola", pointer: nodeSix2)
let answerSeven2 = Answer(text: "Torna a casa", pointer: nodeSeven2)
let answerEight2 = Answer(text: "Gioca con gli amici", pointer: nodeEight2)
let answerNine2 = Answer(text: "Guarda le stelle", pointer: nodeNine2)
let answerTen2 = Answer(text: "Vai verso il rumore",pointer: nodeHappyFinal2)
let answerEleven2 = Answer(text: "Vai a letto", pointer: nodeSadFinal2)

let nodeHappyFinal2 = Node(type: .Final, text: "happy final", question: "", image: #imageLiteral(resourceName: "images"), answers: [])
let nodeSadFinal2 = Node(type: .Final, text: "sad final", question: "", image: #imageLiteral(resourceName: "images"), answers: [])
let nodeNine2 = Node(type: .Normal, text: "nodo 9", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerTen2, answerEleven2])
let nodeEight2 = Node(type: .Normal, text: "nodo 8", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven2, answerTen2])
let nodeSeven2 = Node(type: .Normal, text: "nodo 7", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerEleven2, answerNine2])
let nodeSix2 = Node(type: .Normal, text: "nodo 6", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven2, answerEight2])
let nodeFive2 = Node(type: .Normal, text: "nodo 5", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerSeven2, answerEight2])
let nodeFour2 = Node(type: .Normal, text: "nodo 4", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerFive2, answerSix2])
let nodeThree2 = Node(type: .Normal, text: "nodo 3", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerFive2, answerSix2])
let nodeTwo2 = Node(type: .Normal, text: "nodo 2", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerThree2, answerFour2])
let nodeOne2 = Node(type: .Normal, text: "nodo 1", question: "", image: #imageLiteral(resourceName: "images"), answers: [answerOne2, answerTwo2])

let arrayCharacterTwo = [nodeOne2, nodeTwo2, nodeThree2, nodeFour2, nodeFive2, nodeSix2, nodeSeven2, nodeEight2, nodeNine2, nodeSadFinal2, nodeHappyFinal2]

let characterTwo = Character(name: "Ovest", description: "character description", avatar: #imageLiteral(resourceName: "images"), node: arrayCharacterTwo)

let berlinoBrother = Story(title: "Titolo storia", description: "Description story", thumbnail: #imageLiteral(resourceName: "images"), characters: [characterOne, characterTwo], category: "History", locked: false, progress: nil)



//STORIES
let storyLives: [Story] = [berlinoBrother]

