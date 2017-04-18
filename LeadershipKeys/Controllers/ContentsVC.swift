//
//  ContentsVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class ContentsVC: UITableViewController {
    
    let titles: [String] = ["Leadership Keys",
                            "Leadership Two-Step",
                            "Delegation",
                            "Feedback",
                            "Coaching for Performance",
                            "Assumption Ladder Decision",
                            "Assumption Ladder Applications",
                            "Emotional Audit",
                            "Tell, Sell, Test",
                            "Managing Up and Partnering",
                            "White Space Issues"]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tocCell", for: indexPath) as! ContentsTableViewCell
        
        cell.chapterTitle.text  = titles[indexPath.row]
        cell.chapterTitle.textColor = UIColor.ebonyClay
        
        cell.chapterIndex.textColor = UIColor.ebonyClay
        if indexPath.row == 0 {
            cell.chapterIndex.text = "Overview"
        } else {
            cell.chapterIndex.text = "Key \(indexPath.row)"
        }
        
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


