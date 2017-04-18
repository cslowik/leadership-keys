//
//  ChapterVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/18/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ChapterVC: UIViewController {
    
    var chapterIndex: Int = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    class func generate(_ index: Int) -> UIViewController {
        let newChapter = ChapterVC()
        newChapter.chapterIndex = index
        
        if newChapter.chapterIndex == 0 {
            newChapter.view.backgroundColor = UIColor.ebonyClay
        }
        
        return newChapter
    }
}
