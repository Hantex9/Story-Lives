//
//  NodeViewController.swift
//  Story Lives
//
//  Created by Eduardo Yutaka Nakanishi on 13/12/2017.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class NodeViewController: UIViewController {

    // MARK: - Properties
    var currentStory: Story?
    var currentNode: Node?
    @IBOutlet weak var nodeImageView: UIImageView!
    @IBOutlet weak var contentScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var finishStoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            try currentStory = DataSource.shared.retrieveCurrentStory()
        } catch DataSourceError.invalidStory {
            print("DataSource's story property cannot be nil.")
        } catch DataSourceError.invalidCharacter {
            print("Story's character property cannot be nil.")
        } catch DataSourceError.normalNodeMissingAnswers {
            print("Normal node must have answers.")
        } catch DataSourceError.normalNodeMissingPointer {
            print("Character's normal node must have a pointer.")
        } catch {
            print("An unknown error occured.")
        }
        currentNode = currentStory?.characterSelected?.nodes[0]
        updateView(pointer: currentNode)
        finishStoryButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseFirstAnswer(_ sender: UIButton) {
        updateView(pointer: currentNode?.answers?[0].pointer)
    }
    
    @IBAction func chooseSecondAnswer(_ sender: UIButton) {
        updateView(pointer: currentNode?.answers?[1].pointer)
    }
    
    func updateView(pointer: Node?) {
        nodeImageView.image = pointer?.image
        contentLabel.text = pointer?.text
        firstAnswerButton.setTitle(pointer?.answers?[0].text, for: .normal)
        secondAnswerButton.setTitle(pointer?.answers?[1].text, for: .normal)
        if (pointer?.type == .Final) {
            firstAnswerButton.isHidden = true
            secondAnswerButton.isHidden = true
            finishStoryButton.isHidden = false
        }
    }
    
    @IBAction func finishStory(_ sender: UIButton) {
        print("Go back to main view.")
    }
    
}
