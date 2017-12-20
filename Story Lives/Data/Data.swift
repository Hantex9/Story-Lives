//
//  Data.swift
//  Story Lives
//
//  Created by Carmine Molisso on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//



//CATEGORIES OF THE STORIES
let categories: [String] = ["History", "Science",  "Art History"] //Add others categories


// NODE STORY CHARCTER ONE
//Starter
let answerOne = Answer(text: "Know More", pointer: nodeTwo)
let answerTwo = Answer(text: "I don't care", pointer: nodeFour)
//Know More
let answerThree = Answer(text: "Remember", pointer: nodeThree)
let answerFour = Answer(text: "Sleep", pointer: nodeFour)
//Sleep - Remember
let answerFive = Answer(text: "Go to school", pointer: nodeFive)
let answerSix = Answer(text: "Skip the school", pointer: nodeSix)
//Go to School
let answerSeven = Answer(text: "Back at home", pointer: nodeSeven)
let answerEight = Answer(text: "Play with friends", pointer: nodeEight)

let answerNine = Answer(text: "Watch the stars", pointer: nodeNine)

let answerTen = Answer(text: "Go to noise",pointer: nodeHappyFinal)
let answerEleven = Answer(text: "Go to sleep", pointer: nodeSadFinal)

//Go to noise - HAPPY!
//let nodeHappyFinal = Node(type: .Final, text: "East starts running at breakneck speed towards the noise. Slowly, other people start to pour into the street in a chaotic way. The noises come from the Wall. What is happening? The huge expanse of cement that separates them from their loved ones is finally collapsing. A thousand curious glances could be glimpsed on the other side of the Wall, all of which remained hidden for too long. Among these East recognizes a family portrait …West.", question: "", image: #imageLiteral(resourceName: "happy-end-est"), answers: nil)
let nodeHappyFinal = Node(type: .Final, text: "East starts running at breakneck speed towards the noise. What is happening? A thousand curious glances could be glimpsed on the other side of the Wall, all of which remained hidden for too long. Among these East recognizes a family portrait …West.", question: "", image: #imageLiteral(resourceName: "happy-end-est"), answers: nil)
//Go to sleep - SAD!
let nodeSadFinal = Node(type: .Final, text: "East goes up to his room. Finally, another day is over. What will happen tomorrow? He asks himself resigned. But, in his heart, hopes are light. He knows nothing will change.", question: "", image: #imageLiteral(resourceName: "Dormi Notte - Est"), answers: nil)
//Watch the stars ---> (GO TO NOISE - GO TO SLEEP)
let nodeNine = Node(type: .Normal, text: "East sits on the wet ground. He loves looking at the stars. Suddenly, a roar breaks through the sky and, soon after, the sound of sirens and dogs in the distance envelops the silent night.", question: "", image: #imageLiteral(resourceName: "Guarda le Stelle - Est"), answers: [answerTen, answerEleven])
//Play with friends ---> (BACK AT HOME - GO TO NOISE)
let nodeEight = Node(type: .Normal, text: "East meets occasionally with other children. They play hide and seek among the rubbles until dusk. A loud screamm break the harmony of their game. What is happening?", question: "", image: #imageLiteral(resourceName: "Gioca con gli amici - Est"), answers: [answerSeven, answerTen])
//Back at home ---> (SLEEP - WATCH THE STARS)
//let nodeSeven = Node(type: .Normal, text: "As he enters his home, is immediately hit by the acrid smell of mold. The curved grandfather, with his por of soup, coughs from time to time. It is heartbreaking to feel helpless knowing that there is a cure a single wall away. Trying to drive away from the sad thoughts in his mind and, while pretending a smile, he sits down at the table with his grandfather, savoring the tasteless flavor of the soup.", question: "", image: #imageLiteral(resourceName: "torna-casa-est"), answers: [answerEleven, answerNine])
let nodeSeven = Node(type: .Normal, text: "As he enters his home, is immediately hit by the acrid smell of mold. The curved grandfather, with his por of soup, coughs from time to time. It is heartbreaking to feel helpless knowing that there is a cure a single wall away. Trying to drive away from the sad thoughts in his mind and, while pretending a smile, he sits down at the table with his grandfather, savoring the tasteless flavor of the soup.", question: "", image: #imageLiteral(resourceName: "torna-casa-est"), answers: [answerEleven, answerNine])
//Skip school ---> (BACK AT HOME - PLAY WITH FRIENDS)
//let nodeSix = Node(type: .Normal, text: "East usually stops by at the old Alfred's shop, a small and dark bookstore. There, from time to time, the gracious librarian allows him to open a small and shabby trunk. Inside it, there are a few books with sparkling covers of many different topics. But enough talking about this for, after all, it’s their little secret.", question: "", image: #imageLiteral(resourceName: "libreria-est"), answers: [answerSeven, answerEight])
let nodeSix = Node(type: .Normal, text: "East usually stops by at the old Alfred's shop, a small and dark bookstore. There, from time to time, the gracious librarian allows him to open a small and shabby trunk. Inside it, there are a few books with sparkling covers of many different topics.", question: "", image: #imageLiteral(resourceName: "libreria-est"), answers: [answerSeven, answerEight])
//Go to School ---> (BACK AT HOME - PLAY WITH FRIENDS)
let nodeFive = Node(type: .Normal, text: "The school is a big and cold building. The walls are pale and shabby. East reaches his few classmates and, together, they take their seats in their desks. The teacher is already there ready to start the lesson: how to assemble the tram tracks.", question: "", image: #imageLiteral(resourceName: "vai a scuola est"), answers: [answerSeven, answerEight])
//Sleep ---> (GO TO SCHOOL - SKIP SCHOOL)
let nodeFour = Node(type: .Normal, text: "In the morning, East wakes up with the usual smell of boiled potatoes. He does not like them very much. He eats them hastily, picks up those few shabby books and sets off on his way to school. He hates not having single book of his own. He hates studying and reading about those badly written books.", question: "", image: #imageLiteral(resourceName: "Dormi Giorno - Est"), answers: [answerFive, answerSix])
//Remember ---> (GO TO SCHOOL - SKIP THE SCHOOL)
let nodeThree = Node(type: .Normal, text: "When East received the visit from his aunt and uncle, they brought with them so many strange things. Curious sweets and chocolates of all the colors of the rainbow. New and bizarre musical instruments, comics and colorful and fun magazines. But now, enough with memories. East must go to sleep. There is a curfew. The next morning, East wakes up with the usual smell of boiled potatoes. He does not like them very much. He eats them hastily, picks up those few shabby books and sets off on his way to school. He hates not having single book of his own. He hates studying and reading about those badly written books.", question: "", image: #imageLiteral(resourceName: "Dormi Giorno - Est"), answers: [answerFive, answerSix])
//Know More ---> (REMEMBER - SLEEP)
let nodeTwo = Node(type: .Normal, text: "West is his older brother. They haven’t seen each other for 5 years, since his uncles’ last visit. West is its point of reference in that surreal city devastated by the war.", question: "", image: #imageLiteral(resourceName: "Ricorda - Est"), answers: [answerThree, answerFour])
//Start ---> (KNOW MORE - I DON’T CARE)
let nodeOne = Node(type: .Normal, text: "Berlin 1989 - East was a solitary child with very few interests. Curious? Yes, but shy. He was always always afraid of doing something wrong and getting his family in troubles. The family was the last thing he’s got even if as his eyes filled with tears whenever he thought of West.", question: "", image: #imageLiteral(resourceName: "Inizio"), answers: [answerOne, answerTwo])

let arrayCharacterOne = [nodeOne, nodeTwo, nodeThree, nodeFour, nodeFive, nodeSix, nodeSeven, nodeEight, nodeNine, nodeSadFinal, nodeHappyFinal]

let characterOne = Character(name: "Est", description: "East is a solitary child with very few interests and is curious but shy. He's always afraid of doing something wrong and getting his family in troubles.", avatar:#imageLiteral(resourceName: "Choose your side - Est"), node: arrayCharacterOne)

// NODE STORY CHARCTER TWO
//Starter
let answerOne2 = Answer(text: "Know more", pointer: nodeTwo2)
let answerTwo2 = Answer(text: "I don't care", pointer: nodeFour2)
//Know more
let answerThree2 = Answer(text: "Remember", pointer: nodeThree2)
let answerFour2 = Answer(text: "Sleep", pointer: nodeFour2)
//Remember
let answerFive2 = Answer(text: "Go to school", pointer: nodeFive2)
let answerSix2 = Answer(text: "Skip the school", pointer: nodeSix2)
//Go to school - Skip the school - (...)
let answerSeven2 = Answer(text: "Back at home", pointer: nodeSeven2)
let answerEight2 = Answer(text: "Play with friends", pointer: nodeEight2)

let answerNine2 = Answer(text: "Watch the stars", pointer: nodeNine2)
let answerTen2 = Answer(text: "Go to noise",pointer: nodeHappyFinal2)
let answerEleven2 = Answer(text: "Go to sleep", pointer: nodeSadFinal2)

//Go to noise - HAPPY!
let nodeHappyFinal2 = Node(type: .Final, text: "West starts running at breakneck speed towards the noise. Slowly, other people start to pour into the street in a chaotic way. The noises come from the Wall. What is happening? The huge expanse of cement that separates them from their loved ones has finally fallen down. A thousand curious looks could be glimpsed on the other side of the Wall, all of which remained hidden for too long. Among them, West recognizes a family portrait ... Est.", question: "", image: #imageLiteral(resourceName: "happy-end-ovest"), answers: nil)
//Go to sleep - SAD!
let nodeSadFinal2 = Node(type: .Final, text: "West goes up to his room… Another day is over. What will happen tomorrow? He asks carefreely. But, in his heart, he knows that sooner or later he will emberce closely his brother.", question: "", image: #imageLiteral(resourceName: "Dormi Notte - Ovest"), answers: nil)
//Watch the stars ---> (GO TO NOISE - GO TO SLEEP)
let nodeNine2 = Node(type: .Normal, text: "West sits on the front steps of the house. He loves looking at the stars. Suddenly, a roar breaks through the sky and, soon after, the sound of sirens and dogs in the distance envelops the silent night.", question: "", image: #imageLiteral(resourceName: "Guarda le Stelle - Ovest"), answers: [answerTen2, answerEleven2])
//Play with friends ---> (BACK TO HOME - GO TO NOISE)
let nodeEight2 = Node(type: .Normal, text: "West ocasionally meets with other children at the neighborhood’s park. They play hide and seek among the trees and flowering bushes until dusk. Suddenly, a loud scream breaks the harmony of their game. What is happening?", question: "", image: #imageLiteral(resourceName: "Gioca con gli amici - Ovest"), answers: [answerSeven2, answerTen2])
//Back at home ---> (GO TO SLEEP - WATCH THE STARS)
let nodeSeven2 = Node(type: .Normal, text: "As the child entered his home, he is immediately hit by the succulent smell of roasted meat. The aunt is bringing his favorite dish to the table. It is heartbreaking to enjoy all that without being able to share it with his brother, knowing that he is only one Wall away. Trying to drive away from the sad thoughts in his mind and, while pretending a smile, he sits at the table with his uncles, savoring the tasty taste of the meat.", question: "", image: #imageLiteral(resourceName: "torna-casa-ovest"), answers: [answerEleven2, answerNine2])
//Skip the school ---> (BACK TO HOME - PLAY WITH FRIENDS)
let nodeSix2 = Node(type: .Normal, text: "West used to stop at Madame Bistrot's candy shop, a bright and colorful one. There, from time to time, the affable lady allowed him to taste the freshly baked cookies.", question: "", image: #imageLiteral(resourceName: "Madame Bistrot"), answers: [answerSeven2, answerEight2])
//Go to school ---> (BACK AT HOME - PLAY WITH FRIENDS)
let nodeFive2 = Node(type: .Normal, text: "The school is a red brick building. On the outside, two large trees surround the courtyard. West reaches his classmates, many of whom had Turkish origins and, together, they take place in their desks. The teacher was ready to start the lesson: history.", question: "", image: #imageLiteral(resourceName: "vai a scuola ovest"), answers: [answerSeven2, answerEight2])
//Sleep ---> (GO TO SCHOOL - SKIP THE SCHOOL)
let nodeFour2 = Node(type: .Normal, text: "West wakes up in the morning with the usual inviting smell of milk and chocolate, to start off the day. He eats hastily, picks up his books and sets off to the bus stop. He loves to read his books with their shining covers and the many illustrations.", question: "", image: #imageLiteral(resourceName: "Dormi Giorno - Ovest"), answers: [answerFive2, answerSix2])
//Remember ---> (GO TO SCHOOL - SKIP THE SCHOOL)
let nodeThree2 = Node(type: .Normal, text: "When West, with his uncles, went to visit East and their grandfather, he brought with him the strangest things: The tastiest candies and chocolates from the most colorful packs, unobtainable on the other side of the Wall. He also brought with him new and bizarre musical instruments, comics and colorful and entertaining magazines. But now, enough with memories, it's time to sleep. West wakes up in the morning with the usual inviting smell of milk and chocolate, to start off the day. He eats hastily, picks up his books and sets off to the bus stop. He loves to read his books with their shining covers and the many illustrations.", question: "", image: #imageLiteral(resourceName: "Dormi Giorno - Ovest"), answers: [answerFive2, answerSix2])
//Know more ---> (REMEMBER - SLEEP)
let nodeTwo2 = Node(type: .Normal, text: "East is his little brother. They haven’t seen each other for five years, since the last time they went to visit their grandfather. East was his only reference in that fast-paced and bustling city.", question: "", image: #imageLiteral(resourceName: "Ricorda - Ovest"), answers: [answerThree2, answerFour2])
//Starter ---> (KNOW MORE -  I DON’T CARE)
let nodeOne2 = Node(type: .Normal, text: "Berlin 1989 - West was a sunny and carefree child, curious and extrovert. His uncles promised him he would start taking piano lessons as an attempt to distract him from his nostalgic memories. However, his memories of East are unforgettable.", question: "", image: #imageLiteral(resourceName: "Inizio ovest"), answers: [answerOne2, answerTwo2])

let arrayCharacterTwo = [nodeOne2, nodeTwo2, nodeThree2, nodeFour2, nodeFive2, nodeSix2, nodeSeven2, nodeEight2, nodeNine2, nodeSadFinal2, nodeHappyFinal2]

let characterTwo = Character(name: "Ovest", description: "West is a sunny and carefree child, also very curious and extrovert. But he is very nostalgic because he is sad without his brother.", avatar: #imageLiteral(resourceName: "Choose your side - Ovest"), node: arrayCharacterTwo)

//Berlino Story
let berlinoBrother = Story(title: "Berlino Brothers", description: "This story tells the fall of the Berlin Wall in 1989, which divided Germany in the East and in the West through the parallel lives of two brothers.", thumbnail: #imageLiteral(resourceName: "Merged Cover"), characters: [characterTwo, characterOne], category: "History", locked: false, progress: nil, imageForDescription: #imageLiteral(resourceName: "Detail View Illustration"))

//Locked Stories
//SCIENCE
let esplorationSpace = Story(title: "Exploration of Space", description: nil, thumbnail: #imageLiteral(resourceName: "science1"), characters: nil, category: "Science", locked: true, progress: nil, imageForDescription: nil)
let volcanoVesuvio = Story(title: "The Volcano Vesuvio", description: nil, thumbnail: #imageLiteral(resourceName: "science2"), characters: nil, category: "Science", locked: true, progress: nil, imageForDescription: nil)
let childChemist = Story(title: "The Child Chemist", description: nil, thumbnail:#imageLiteral(resourceName: "science3"), characters: nil, category: "Science", locked: true, progress: nil, imageForDescription: nil)

//ART HISTORY
let vitruvianMan = Story(title: "Vitruvian Man", description: nil, thumbnail: #imageLiteral(resourceName: "art2"), characters: nil, category: "Art History", locked: true, progress: nil, imageForDescription: nil)
let classicism = Story(title: "Classicism", description: nil, thumbnail: #imageLiteral(resourceName: "art1"), characters: nil, category: "Art History", locked: true, progress: nil, imageForDescription: nil)

//HISTORY
let siegeOfConstantinople = Story(title: "Siege of Constantinople", description: nil, thumbnail: #imageLiteral(resourceName: "history2"), characters: nil, category: "History", locked: true, progress: nil, imageForDescription: nil)
let battleOfStalingrad = Story(title: "Battle of Stalingrad", description: nil, thumbnail: #imageLiteral(resourceName: "history3"), characters: nil, category: "History", locked: true, progress: nil, imageForDescription: nil)

//STORIES
let storyLives: [Story] = [berlinoBrother, siegeOfConstantinople, battleOfStalingrad, esplorationSpace, volcanoVesuvio, childChemist, vitruvianMan, classicism]



