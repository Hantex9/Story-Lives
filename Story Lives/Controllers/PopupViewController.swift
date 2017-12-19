//
//  PopupViewController.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var previewDescription: UITextView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var titleStory: UILabel!
    
//    override var prefersStatusBarHidden: Bool { return false } //Hide the status bar on the pop-up view
    
    override func viewDidLoad() {
        
        playButton.layer.cornerRadius = playButton.frame.height / 2
        
        guard  let statusBar = (UIApplication.shared.value(forKey: "statusBarWindow") as AnyObject).value(forKey: "statusBar") as? UIView else {
            return
        }
        
        statusBar.backgroundColor = .none
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.previewImage.image = DataSource.shared.getCurrentStory()?.thumbnail
        self.previewDescription.text = DataSource.shared.getCurrentStory()?.description
        self.titleStory.text = DataSource.shared.getCurrentStory()?.title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
