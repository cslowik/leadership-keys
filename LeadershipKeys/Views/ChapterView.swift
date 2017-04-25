//
//  ChapterView.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/24/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ChapterView: UIScrollView {

    init(frame: CGRect, chapter: Int) {
        super.init(frame: frame)
        layoutChapter(chapter)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK:- Chapter Layouts
    func layoutChapter(_ chapter: Int) {
        switch chapter {
        case 0:
            //MARK:- Chapter 0
            
            break
        case 1:
            //MARK:- Chapter 1
            break
        case 2:
            //MARK:- Chapter 2
            break
        case 3:
            //MARK:- Chapter 3
            break
        case 4:
            //MARK:- Chapter 4
            break
        case 5:
            //MARK:- Chapter 5
            break
        case 6:
            //MARK:- Chapter 6
            break
        case 7:
            //MARK:- Chapter 7
            break
        case 8:
            //MARK:- Chapter 8
            break
        case 9:
            //MARK:- Chapter 9
            break
        default:
            break
        }
    }
}
