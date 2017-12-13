//
//  MainViewController.swift
//  Story Lives
//
//  Created by Carmine Molisso on 13/12/17.
//  Copyright © 2017 Alessandro Izzo. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let storyLive: [Story] = storyLives
    
    fileprivate let heightRows: CGFloat = 223.0 //Height of the rows
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return categories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! MainViewSectionCell
        cell.collectionView.tag = indexPath.row + indexPath.section
        cell.collectionView.dataSource = cell.collectionView
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightRows
    }
}

