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
    @IBOutlet weak var nodeImageView: UIImageView!
    
    @IBOutlet weak var contentScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    
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
        nodeImageView.image = currentStory?.characterSelected?.nodes[0].image
        contentLabel.text = currentStory?.characterSelected?.nodes[0].text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
