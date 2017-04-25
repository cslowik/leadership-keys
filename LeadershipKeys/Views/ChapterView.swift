//
//  ChapterView.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/24/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import SnapKit

class ChapterView: UIScrollView {
    
    let edgeMargin: CGFloat = UIScreen.main.bounds.width * 0.024

    init(frame: CGRect, chapter: Int) {
        super.init(frame: frame)
        layoutChapter(chapter)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK:- Chapter Layouts
    func layoutChapter(_ chapter: Int) {
        
        // Make title
        let titleLabel = UITextView()
        titleLabel.font = UIFont.titleFont
        titleLabel.textColor = UIColor.ebonyClay
        titleLabel.isEditable = false
        titleLabel.isSelectable = false
        titleLabel.isScrollEnabled = false
        titleLabel.backgroundColor = UIColor.azureRadiance
        
        switch chapter {
        case 0:
            //MARK:- Chapter 0
            let title = "Emotional Intelligence Tools to go from Good to Great Leadership"
            titleLabel.text = title
            addSubview(titleLabel)
            makeTitleConstraints(titleLabel)
            
            break
        case 1:
            //MARK:- Chapter 1
            let title = "Leadership Two-Step"
            
            break
        case 2:
            //MARK:- Chapter 2
            let title = "Delegation"
            
            break
        case 3:
            //MARK:- Chapter 3
            let title = "Giving Feedback"
            
            break
        case 4:
            //MARK:- Chapter 4
            let title = "Coaching for Performance"
            
            break
        case 5:
            //MARK:- Chapter 5
            let title = "Assumption Ladder"
            
            break
        case 6:
            //MARK:- Chapter 6
            let title = "Assumption Ladder Applications"
            
            break
        case 7:
            //MARK:- Chapter 7
            let title = "Emotional Audit"
            
            break
        case 8:
            //MARK:- Chapter 8
            let title = "Tell, Sell, Test"
            
            break
        case 9:
            //MARK:- Chapter 9
            let title = "Managing Up & Partnering"
            
            break
        case 10:
            //MARK:- Chapter 10
            let title = "White Space Issues"
            
            break
        default:
            break
        }
    }
    
    func makeTitleConstraints(_ titleLabel: UITextView) {
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.centerX.equalToSuperview()
        }
    }
}
