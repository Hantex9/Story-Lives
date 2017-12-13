//
//  DataSource.swift
//  Story Lives
//
//  Created by Carmine Molisso on 12/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

enum DataSourceError: Error {
    case invalidStory, invalidCharacter, normalNodeMissingAnswers, normalNodeMissingPointer 
}

class DataSource {
    
    static let shared = DataSource()
    
    private var currentStory: Story?
    
    private init() {
        
    }
    
    func getSelectedCharacter() -> Character {
        return (story?.characterSelected)!
    }
        
        guard let currentChatacter = story.characterSelected else {
            throw DataSourceError.invalidCharacter
        }
        
        for node in currentChatacter.nodes {
            switch node.type {
            case .Normal:
                guard let answers = node.answers else {
                    throw DataSourceError.normalNodeMissingAnswers
                }
                
                for answer in answers {
                    if answer.pointer == nil {
                        throw DataSourceError.normalNodeMissingPointer
                    }
                }
            case .Error:
                break
            case .Final:
                break
            }
        }
        
        return story
    }
}
