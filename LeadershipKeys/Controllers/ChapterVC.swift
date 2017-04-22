//
//  ChapterVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/18/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ChapterVC: UIViewController {
    
    var chapterIndex: Int
    var chapterTitle: String
    var chapterSubtitle: String
    var chapterText: String

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(index: Int, title: String, subtitle: String, text: String) {
        chapterIndex = index
        chapterTitle = title
        chapterSubtitle = subtitle
        chapterText = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        chapterIndex = 0
        chapterTitle = "No chapter"
        chapterSubtitle = ""
        chapterText = ""
        super.init(coder: aDecoder)
    }
    
}
