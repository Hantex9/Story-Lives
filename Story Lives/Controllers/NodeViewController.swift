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
        updateView(pointer: currentNode, withAnimation: false)
        let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
        statusBar?.backgroundColor = UIColor.clear
        //contentLabel.font = UIFont(name: "OpenSans", size: 18)
        finishStoryButton.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseFirstAnswer(_ sender: UIButton) {
        updateView(pointer: currentNode?.answers?[0].pointer, withAnimation: true)
    }
    
    @IBAction func chooseSecondAnswer(_ sender: UIButton) {
        updateView(pointer: currentNode?.answers?[1].pointer, withAnimation: true)
    }
    
    func updateView(pointer: Node?, withAnimation: Bool) {
        if withAnimation {
            UIView.animate(withDuration: 0.2, animations: {
                self.nodeImageView?.alpha = 0.0
                self.contentView?.alpha = 0.0
            }, completion: { _ in
                self.currentNode = pointer
                self.nodeImageView.image = self.currentNode?.image
                self.contentLabel.text = self.currentNode?.text
                self.firstAnswerButton.setTitle(self.currentNode?.answers?[0].text, for: .normal)
                self.secondAnswerButton.setTitle(self.currentNode?.answers?[1].text, for: .normal)
                if (pointer?.type == .Final) {
                    self.firstAnswerButton.isHidden = true
                    self.secondAnswerButton.isHidden = true
                    self.finishStoryButton.isHidden = false
                }
                UIView.animate(withDuration: 0.2, animations: {
                    self.nodeImageView?.alpha = 1.0
                    self.contentView?.alpha = 1.0
                })
            })
        } else {
            self.currentNode = pointer
            self.nodeImageView.image = self.currentNode?.image
            self.contentLabel.text = self.currentNode?.text
            self.firstAnswerButton.setTitle(self.currentNode?.answers?[0].text, for: .normal)
            self.secondAnswerButton.setTitle(self.currentNode?.answers?[1].text, for: .normal)
            if (pointer?.type == .Final) {
                self.firstAnswerButton.isHidden = true
                self.secondAnswerButton.isHidden = true
                self.finishStoryButton.isHidden = false
            }
        }
    }
    
    @IBAction func returnToCharacterSelection(_ sender: UIButton) {
    }
    
    @IBAction func finishStory(_ sender: UIButton) {

    }
    
}
