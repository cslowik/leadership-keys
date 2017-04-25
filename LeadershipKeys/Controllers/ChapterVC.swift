//
//  ChapterVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/18/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class ChapterVC: UIViewController {
    var chapterIndex: Int
    var chapterTitle: String
    var chapterSubtitle: String
    var chapterView: ChapterView! { return self.view as! ChapterView }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(index: Int, title: String, subtitle: String) {
        chapterIndex = index
        chapterTitle = title
        chapterSubtitle = subtitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        chapterIndex = 0
        chapterTitle = "No chapter"
        chapterSubtitle = ""
        super.init(coder: aDecoder)
    }
    
    override func loadView() {
        view = ChapterView(frame: UIScreen.main.bounds, chapter: chapterIndex)
    }
}
