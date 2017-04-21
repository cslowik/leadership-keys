//
//  ContentsVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ContentsVC: UITableViewController {
    
    var chapters: [[String:String]] {
        get {
            return FileHelper.main.chapters
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tocCell", for: indexPath) as! ContentsTableViewCell
        
        cell.chapterTitle.text  = chapters[indexPath.row]["title"]
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        cell.chapterIndex.text = chapters[indexPath.row]["subtitle"]
        
        //TODO: set selected state
        // if current page of article vc matches the index, set selected, otherwise set unselected
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cellBackground = UIColor.athensGray
        cell.backgroundColor = cellBackground
        
        if (indexPath as NSIndexPath).row % 2 != 0 {
            cell.backgroundColor = UIColor.clear
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //TODO: go to selected page and dismiss menu
        
    }

    
}


