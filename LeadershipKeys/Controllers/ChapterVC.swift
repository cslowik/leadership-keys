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
    var chapterView: ChapterView! { return self.view as! ChapterView }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(index: Int) {
        chapterIndex = index
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        chapterIndex = 0
        super.init(coder: aDecoder)
    }
    
    override func loadView() {
        view = ChapterView(frame: UIScreen.main.bounds, chapter: chapterIndex)
    }
    
    override func viewDidLayoutSubviews() {
        var contentRect = CGRect.zero
        for contentView in view.subviews {
            contentRect = contentRect.union(contentView.frame)
        }
        chapterView.contentSize = contentRect.size
    }
}
