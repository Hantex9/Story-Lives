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
    
    override var prefersStatusBarHidden: Bool { return true } //Hide the status bar on the pop-up view
    
    override func viewDidLoad() {
        
        playButton.layer.cornerRadius = playButton.frame.height / 2
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.previewImage.image = DataSource.shared.getCurrentStory()?.thumbnail
        self.previewDescription.text = DataSource.shared.getCurrentStory()?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
