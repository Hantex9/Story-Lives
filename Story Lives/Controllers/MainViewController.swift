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
        cell.collectionView.dataSource = cell.collectionView
        cell.collectionView.delegate = cell.collectionView
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightRows
    }
    
    //Used for changing the section background color
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let headerView = view as! UITableViewHeaderFooterView
        headerView.textLabel?.textColor = UIColor.lightGray
//        headerView.textLabel?.frame = CGRect(x: (headerView.textLabel?.frame.origin.x)!, y: (headerView.textLabel?.frame.origin.y)!, width: 57.0, height: 19.0)
        headerView.textLabel?.font = UIFont(name: "OpenSans", size: 14.0)
        view.tintColor = UIColor.clear
    }
    
    //Distance from Section title and cells
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 13.0
    }
}

