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
            
            let p1 = addParagraph(after: titleLabel, withText: "As leaders move up in an organization up to 90% of their success factors are in Emotional Intelligence (EI) versus Intelligence and Technical expertise. <i>(Goleman, 2006)</i> Going from good to great takes doing  5-6 competencies really well. <i>(Zenger and Folkman, 2009)</i>")
            
            let p2 = addParagraph(after: p1, withText: "Below are tools that will assist you in becoming a Star Performer. Use these tools to prepare, practice, inform and perform.")
            
            //TODO: Add table
            
            let hr1 = addHorizontalRule(after: p2)
            
            let t2 = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            
            _ = addQuote(after: t2, withText: "\"Every leader I have worked with has underestimated their influence on others and consequently underperformed. How do you remedy this? Take <b>micro-initiatives</b> daily and create <b>macro-impacts</b>.\" <i>Relly Nadler, Psy.D. - 2006-2011</i>")
            
            break
        case 1:
            //MARK:- Chapter 1
            let title = "Leadership Two-Step"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let p1 = addParagraph(after: titleLabel, withText: "Leadership has a rhythm and beat to it. You have to know the right time to step in and when to step out. Star leaders feel the beat and make the appropriate steps. They don’t take their direct reports problems or \"monkeys\", but help them deal with their \"monkeys\" with support and resources. Rank yourself on each of the steps, on a 1-10. Practice the steps which will help you the most to become good at all the steps.")

            let t2 = addHeading(after: p1, level: 2, withText: "1. Step In")
            
            let p2 = addParagraph(after: t2, withText: "Set the vision, systems and structure, clarify expectations, identify the deliverables and timetable, establish resources available, encourage and motivate.")
            
            let t3 = addHeading(after: p2, level: 3, withText: "Step In - If it’s going well")
            
            let p3 = addParagraph(after: t3, withText: "Support and acknowledge, spread the news, codify what is working well to replicate. Hold the accountability. Monitor, evaluate and adjust. Reiterate the vision and deliverables.")
            
            let t4 = addHeading(after: p3, level: 3, withText: "Step In - If it’s not going well")
            
            let p4 = addParagraph(after: t4, withText: "\"Right the ship\". Understand what is the issue and what they have tried. Make a decision quickly after you have checked in with them. Reiterate the vision and deliverables. Clarify expectations and resources.")
        
            let t5 = addHeading(after: p4, level: 2, withText: "2. Step Out")
            
            let p5 = addParagraph(after: t5, withText: "Leave alone and let them come to you if they have questions, Empower and encourage them to use their own best judgment. Redirect to others. Manage resources. Fight the urge to step in and take over. Recognize and support. Don't take their problems or \"monkeys.\"")
            
            let t6 = "Repeat steps as needed"
                .styleAll(h3)
                .attributedString
            let t6View = UITextView()
            t6View.attributedText = t6
            t6View.configure()
            addSubview(t6View)
            t6View.snp.makeConstraints({ (make) in
                make.centerX.equalToSuperview()
                make.top.equalTo(p5.snp.bottom)
            })
            
            let hr1 = addHorizontalRule(after: t6View)
            
            let t7 = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            
            let q1 = addQuote(after: t7, withText: "\"Leaders have 50-70% influence over the climate of their team.\" <i>Hay Group in Nadler, 2011</i>")
            _ = addQuote(after: q1, withText: "\"77% of companies say they don’t have enough successors to their current senior managers.\" <i>Right Management Consultants (2006)</i>")
            
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
    
    func addHeading(after: UIView, level: Int, withText hText: String) -> UIView {
        var headingStyle: Style
        var topMargin: CGFloat = 0
        switch level {
        case 1:
            headingStyle = titleStyle
        case 2:
            headingStyle = subtitleStyle
            topMargin = edgeMargin
        case 3:
            headingStyle = h3
        default:
            headingStyle = titleStyle
        }
        let styledText = hText
            .styleAll(headingStyle)
            .attributedString
        let headingView = UITextView()
        headingView.attributedText = styledText
        headingView.configure()
        addSubview(headingView)
        headingView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(topMargin)
        })
        return headingView
    }
    
    func addParagraph(after: UIView, withText pText: String) -> UIView {
        let styledText = pText
            .style(tags: [i, b])
            .styleAll(bodyStyle.paragraphStyle(paragraph))
            .attributedString
        let pView = UITextView()
        pView.attributedText = styledText
        pView.configure()
        addSubview(pView)
        pView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.centerX.equalToSuperview()
            make.top.equalTo(after.snp.bottom)
        }
        return pView
    }
    
    func addHorizontalRule(after: UIView) -> UIView {
        let hRule = UIView()
        hRule.backgroundColor = UIColor.athensGray
        addSubview(hRule)
        hRule.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin)
            make.height.equalTo(2)
        })
        return hRule
    }
    
    func addQuote(after: UIView, withText qText: String) -> UIView {
        let styledText = qText
            .style(tags: [b, i])
            .styleAll(quoteStyle)
            .attributedString
        
        let quoteText = UITextView()
        quoteText.attributedText = styledText
        quoteText.configure()
        let quoteView = UIView()
        addSubview(quoteView)
        quoteView.backgroundColor = UIColor.athensGray
        
        quoteView.addSubview(quoteText)
        quoteText.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalToSuperview().inset(edgeMargin)
        })
        
        quoteView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(after.snp.bottom).offset(edgeMargin)
            make.bottom.equalTo(quoteText.snp.bottom).offset(edgeMargin)
        })
        
        return quoteView
    }
}
