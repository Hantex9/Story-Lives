//
//  MainViewController.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    @IBOutlet weak var headerTable: UILabel!
    let storyLive: [Story] = storyLives
    
    var tag: Int = 0
    var counter: Int = 0
    
    fileprivate let heightRows: CGFloat = 223.0 //Height of the rows
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section].uppercased()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! MainViewSectionCell
        cell.collectionView.tag = indexPath.row + indexPath.section
        cell.collectionView.dataSource = self
        cell.collectionView.delegate = self
        self.counter = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightRows
    }
    
    //Used for changing the section background color
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let headerView = view as! UITableViewHeaderFooterView
        headerView.textLabel?.textColor = UIColor.lightGray
        headerView.textLabel?.font = UIFont(name: "OpenSans", size: 14.0)
        view.tintColor = UIColor.clear
    }
    
    //Distance from Section title and cells
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
   
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var countStories: Int = 0
        for story in storyLive {
            if story.category == categories[collectionView.tag] {
                countStories += 1
            }
        }
        return countStories
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! MainCollectionViewCell
        let category: String = categories[collectionView.tag]
        for (index,story) in storyLive.enumerated() {
            print(self.counter)
            if index >= self.counter && story.category == category {
                cell.storyImage.image = storyLive[index].thumbnail
                cell.storyTitle.text = storyLive[index].title
                print("Index: " + String(index))
                break
            }
        }
        self.counter += 1
        print("New Counter: " + String(self.counter))
        return cell
    }
    
    
    func alertAnswer() {
        let alert = UIAlertController(title: "Error", message: "Try again...", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default){ action in
        })
        present(alert, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let category: String = categories[collectionView.tag]
        let infoCell = collectionView.cellForItem(at: indexPath) as! MainCollectionViewCell
        
        for story in storyLive {
            if story.category == category && story.title == infoCell.storyTitle.text{
                if !(story.isLocked()) {
                    if(!DataSource.shared.setCurrentStory(story: story)) {
                        print("Error about loading current Story")
                    } else {
                        performSegue(withIdentifier: "presentPopup", sender: nil)
                    }
                } else {
                    self.alertAnswer()
                }
            }
        }
    }
    
}
























