//
//  StoryViewController.swift
//  Story Lives
//
//  Created by Eduardo Yutaka Nakanishi on 11/12/2017.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var storyPageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        storyPageControl.numberOfPages = 5
        storyPageControl.currentPage = 1
        storyPageControl.updateCurrentPageDisplay()
        // Do any additional setup after loading the view.
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
