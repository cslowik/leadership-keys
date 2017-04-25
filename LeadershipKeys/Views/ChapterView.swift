//
//  ChapterView.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/24/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import SnapKit
import Atributika

class ChapterView: UIScrollView {
    
    let paragraph = NSMutableParagraphStyle()
    let edgeMargin: CGFloat = UIScreen.main.bounds.width * 0.024

    init(frame: CGRect, chapter: Int) {
        super.init(frame: frame)
        layoutChapter(chapter)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    //MARK:- Chapter Layouts
    func layoutChapter(_ chapter: Int) {
        paragraph.lineSpacing = 1.45
        
        // Make title
        let titleLabel = UITextView()
        titleLabel.font = UIFont.titleFont
        titleLabel.textColor = UIColor.ebonyClay
        titleLabel.configure()
        
        switch chapter {
        case 0:
            //MARK:- Chapter 0
            let t1 = "Emotional Intelligence Tools to go from Good to Great Leadership"
            titleLabel.text = t1
            addTitle(titleLabel)
            
            let p1 = "As leaders move up in an organization up to 90% of their success factors are in Emotional Intelligence (EI) versus Intelligence and Technical expertise. <i>(Goleman, 2006)</i> Going from good to great takes doing  5-6 competencies really well. <i>(Zenger and Folkman, 2009)</i>"
                .style(tags: i)
                .styleAll(bodyStyle.paragraphStyle(paragraph))
                .attributedString
            let p1View = UITextView()
            p1View.attributedText = p1
            p1View.configure()
            addSubview(p1View)
            p1View.snp.makeConstraints { (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.centerX.equalToSuperview()
                make.top.equalTo(titleLabel.snp.bottom).offset(edgeMargin)
            }
            
            let p2 = "Below are tools that will assist you in becoming a Star Performer. Use these tools to prepare, practice, inform and perform."
                .styleAll(bodyStyle.paragraphStyle(paragraph))
                .attributedString
            let p2View = UITextView()
            p2View.attributedText = p2
            p2View.configure()
            addSubview(p2View)
            p2View.snp.makeConstraints({ (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.centerX.equalToSuperview()
                make.top.equalTo(p1View.snp.bottom).offset(edgeMargin)
            })
            
            //TODO: Add table
            
            let t2 = "Leadership Keys"
                .styleAll(subtitleStyle)
                .attributedString
            let t2View = UITextView()
            t2View.attributedText = t2
            t2View.configure()
            addSubview(t2View)
            t2View.snp.makeConstraints({ (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.centerX.equalToSuperview()
                make.top.equalTo(p2View.snp.bottom).offset(edgeMargin * 2)
            })
            
            let q1 = "\"Every leader I have worked with has underestimated their influence on others and consequently underperformed. How do you remedy this? Take <b>micro-initiatives</b> daily and create <b>macro-impacts</b>.\" <i>Relly Nadler, Psy.D. - 2006-2011</i>"
                .style(tags: [b, i])
                .styleAll(quoteStyle)
                .attributedString
            
            let q1Text = UITextView()
            q1Text.attributedText = q1
            q1Text.configure()
            let q1View = UIView()
            addSubview(q1View)
            q1View.backgroundColor = UIColor.athensGray
            
            q1View.addSubview(q1Text)
            q1Text.snp.makeConstraints({ (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.top.equalToSuperview().inset(edgeMargin)
            })
            
            q1View.snp.makeConstraints({ (make) in
                make.left.equalToSuperview()
                make.right.equalToSuperview()
                make.top.equalTo(t2View.snp.bottom).offset(edgeMargin)
                make.bottom.equalTo(q1Text.snp.bottom).offset(edgeMargin)
            })
            
            break
        case 1:
            //MARK:- Chapter 1
            let title = "Leadership Two-Step"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 2:
            //MARK:- Chapter 2
            let title = "Delegation"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 3:
            //MARK:- Chapter 3
            let title = "Giving Feedback"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 4:
            //MARK:- Chapter 4
            let title = "Coaching for Performance"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 5:
            //MARK:- Chapter 5
            let title = "Assumption Ladder"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 6:
            //MARK:- Chapter 6
            let title = "Assumption Ladder Applications"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 7:
            //MARK:- Chapter 7
            let title = "Emotional Audit"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 8:
            //MARK:- Chapter 8
            let title = "Tell, Sell, Test"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 9:
            //MARK:- Chapter 9
            let title = "Managing Up & Partnering"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        case 10:
            //MARK:- Chapter 10
            let title = "White Space Issues"
            titleLabel.text = title
            addTitle(titleLabel)
            
            break
        default:
            break
        }
        
    }
    
    func addTitle(_ titleLabel: UITextView) {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.centerX.equalToSuperview()
        }
    }
}
