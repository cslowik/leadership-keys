//
//  ContentsVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

protocol ContentsDelegate {
    func didSelectChapter(_ index: Int, sender: ContentsVC)
    var currentChapter: Int { get }
}

class ContentsVC: UITableViewController {
    
    var chapters: [[String:String]] {
        get {
            return FileHelper.main.chapters
        }
    }
    var delegate:ContentsDelegate?
    
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
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cellBackground = UIColor.athensGray
        cell.backgroundColor = cellBackground
        
        if (indexPath as NSIndexPath).row % 2 != 0 {
            cell.backgroundColor = UIColor.clear
        }
        
        guard delegate != nil else {
            return
        }
        if delegate?.currentChapter == indexPath.row {
            cell.isSelected = true
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        delegate?.didSelectChapter(indexPath.row, sender: self)
    }

    
}


