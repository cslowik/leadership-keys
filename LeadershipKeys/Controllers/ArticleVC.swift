//
//  ArticleVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import Pages

class ArticleVC: PagesController {
    
    var chapterViewControllers: [ChapterVC] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        dataSource = self
        
        if chapterViewControllers == [] {
            chapterViewControllers = FileHelper.main.buildChapters()
        }
        
        add(chapterViewControllers)
        navigationItem.title = chapterViewControllers.first?.chapterSubtitle
        
    }
    
    @IBAction func contentsTapped(_ sender: Any) {
        print("contents")
        showTOC()
    }
    @IBAction func menuTapped(_ sender: Any) {
        print("menu")
        showMenu()
    }
    
    func showTOC() {
        performSegue(withIdentifier: "showContents", sender: self)
    }
    func showMenu() {
        performSegue(withIdentifier: "showMenu", sender: self)
    }
    
}
