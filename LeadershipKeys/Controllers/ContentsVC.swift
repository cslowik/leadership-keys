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
    
    
    // MARK : TableViewDataSource & Delegate Methods
    
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
            cell.setSelected(true, animated: false)
        } else {
            cell.chapterIndex.text = "Key \(indexPath.row)"
        }
        
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
        
        switch indexPath.row {
        case 0:
            // set new content view controller
            break
        case 1:
            // set new content view controller
            break
        default:
            break
        }
        
        
    }

    
}


