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
import AVKit
import AVFoundation

enum ListStyle {
    case bullet
    case number
}

protocol ChapterViewDelegate {
    func watchVideo()
}

class ChapterView: UIScrollView {
    
    var chapterDelegate: ChapterViewDelegate!
    let paragraph = NSMutableParagraphStyle()
    let edgeMargin: CGFloat = UIScreen.main.bounds.width * 0.024
    let screenWidth = UIScreen.main.bounds.width
    let cellHeight: CGFloat = 56.0
    var videoURL: String?

    init(frame: CGRect, chapter: Int) {
        super.init(frame: frame)
        videoURL = FileHelper.main.chapters[chapter]["video"]
        loadVideo()
        layoutChapter(chapter)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK:- Video Utility
    func loadVideo() {
        if videoURL != nil {
            
        }
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
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let p1 = addParagraph(after: movieButton, withText: "As leaders move up in an organization up to 90% of their success factors are in Emotional Intelligence (EI) versus Intelligence and Technical expertise. <i>(Goleman, 2006)</i> Going from good to great takes doing  5-6 competencies really well. <i>(Zenger and Folkman, 2009)</i>")
            
            let p2 = addParagraph(after: p1, withText: "Below are tools that will assist you in becoming a Star Performer. Use these tools to prepare, practice, inform and perform.")
            
            let table1 = addMultiTable(after: p2, withData: [
                ["<tb>Tools</tb>", "<tb>Competency</tb>"],
                ["Leadership Two-Step", "Leadership, Initiative"],
                ["Delegation", "Developing Others"],
                ["Giving Feedback", "Communication, Teamwork"],
                ["Coaching for Performance", "Developing Others"],
                ["Assumption Ladder", "Decision Making"],
                ["Assumption Ladder", "Communication, Conflict"],
                ["Emotional Audit", "Self-Management"],
                ["Tell, Sell, Test", "Level of Involvement"],
                ["Managing Up & Partnering", "Relationship Management"],
                ["White Space", "Communication"]])
            
            let hr1 = addHorizontalRule(after: table1)
            
            let t2 = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            
            _ = addQuote(after: t2, withText: "\"Every leader I have worked with has underestimated their influence on others and consequently underperformed. How do you remedy this? Take <qb>micro-initiatives</qb> daily and create <qb>macro-impacts</qb>.\" <qi>Relly Nadler, Psy.D. - 2006-2011</qi>")
            
            break
        case 1:
            //MARK:- Chapter 1
            let title = "Leadership Two-Step"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let p1 = addParagraph(after: movieButton, withText: "Leadership has a rhythm and beat to it. You have to know the right time to step in and when to step out. Star leaders feel the beat and make the appropriate steps. They don’t take their direct reports problems or \"monkeys\", but help them deal with their \"monkeys\" with support and resources. Rank yourself on each of the steps, on a 1-10. Practice the steps which will help you the most to become good at all the steps.")

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
            
            let l1 = addList(after: t7,
                             withItems: ["<b>Tool:</b> Leadership Two-Step", "<b>Competency:</b> Leadership, Initiative"],
                             listStyle: .bullet)
            
            let q1 = addQuote(after: l1, withText: "\"Leaders have 50-70% influence over the climate of their team.\" <qi>Hay Group in Nadler, 2011</qi>")
            _ = addQuote(after: q1, withText: "\"77% of companies say they don’t have enough successors to their current senior managers.\" <qi>Right Management Consultants (2006)</qi>")
            
            break
        case 2:
            //MARK:- Chapter 2
            let title = "Delegation"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let p1 = addParagraph(after: movieButton, withText: "It is important to be very clear how you delegate. The following steps will help make you sure you covered all the key points.")
            
            let h1 = addHeading(after: p1, level: 2, withText: "Desired Results")
            let h2 = addHeading(after: h1, level: 3, withText: "The big picture, beginning with the end in mind.")
            let l1 = addList(after: h2,
                             withItems: ["What are you trying to accomplish?",
                                         "What are the key goals or deliverables?",
                                         "What kind of relationship do you want with your direct reports?"],
                             listStyle: .bullet)
            
            let h3 = addHeading(after: l1, level: 2, withText: "Guidelines")
            let h4 = addHeading(after: h3, level: 3, withText: "More specifics, how to get it done.")
            let l2 = addList(after: h4, withItems: ["Key do’s and don’ts.",
                                                    "Don’t spend more than X amount of time or money.",
                                                    "Check in with you at what points?"],
                             listStyle: .bullet)
            let p2 = addParagraph(after: l2, withText: "<b>Levels of initiative:\nwhen to CHECK BACK</b>")
            let l3 = addList(after: p2,
                             withItems: ["Recommend <b>then</b> Act:\n\tThis is insurance for you. For example: personnel issues, changes that affect the project, budget or timeline and they must see you first.\n",
                                         "Act and advise:\n\tThe person is empowered to make their own decisions and keep you informed periodically or immediately. For example: Daily routines, clarify up to what amount of money, time and resources they can use."],
                             listStyle: .number)
            
            let h5 = addHeading(after: l3, level: 2, withText: "Resources")
            let p3 = addParagraph(after: h5, withText: "What people, time, money, training, software, consultants can be used to achieve the desired result.")
            
            let h6 = addHeading(after: p3, level: 2, withText: "Accountabilities")
            let l4 = addList(after: h6, withItems: ["What metrics do you have to measure the desired results?",
                                                    "How will you know they are being successful or not?",
                                                    "When and where will they be measured?",
                                                    "Others also act as accountabilities, i.e. executive feedback"],
                             listStyle: .bullet)
            
            let h7 = addHeading(after: l4, level: 2, withText: "Positive Impacts")
            let p4 = addParagraph(after: h7, withText: "What are the positive impacts from achieving the desired results on you the team and the individual. For example: More challenging projects, better leadership, eligible for more training, make budget, quality product, helping the team, more respect and progress in their career goals.")
            let h8 = addHeading(after: p4, level: 3, withText: "Negative Impacts")
            let p5 = addParagraph(after: h8, withText: "Opposite of the positive ones above. Better to talk about them before negative consequences happen.")
            
            let hr1 = addHorizontalRule(after: p5)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                             withItems: ["<b>Tool:</b> Delegation", "<b>Competency:</b> Developing Others"],
                             listStyle: .bullet)
            let leadershipQuote1 = addQuote(after: leadershipList, withText: "\"Inspiring and motivating leaders in the top 10% have higher levels of employee productivity, satisfaction, commitment, and better retention.\" <i>Zenger and Folkman, 2009</i>")
            _ = addQuote(after: leadershipQuote1, withText: "\"77% of companies say they don’t have enough successors to their current senior managers.\" <i>Nadler (2011)</i>")
            break
        case 3:
            //MARK:- Chapter 3
            let title = "Giving Feedback"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let h1 = addHeading(after: movieButton, level: 2, withText: "<hb>S</hb> - Set the Stage")
            let h2 = addHeading(after: h1, level: 3, withText: "Intention, Readiness to listen")
            let l1 = addList(after: h2,
                             withItems: ["\"I’d like to talk to you about something–will this time work?\"",
                                                    "\"My intention is to help you develop and to work together on this.\"",
                                                    "\"Can I give you some feedback?\""],
                             listStyle: .bullet)
            
            let h3 = addHeading(after: l1, level: 2, withText: "<hb>S</hb> - State the Solution")
            let h4 = addHeading(after: h3, level: 3, withText: "What happened and where?")
            let l2 = addList(after: h4,
                             withItems: ["\"In the meeting today…\"",
                                         "\"When you spoke to _______.\"",
                                         "\"In the report you wrote _______.\""],
                             listStyle: .bullet)
            
            let h5 = addHeading(after: l2, level: 2, withText: "<hb>B</hb> - State the Behavior")
            let h6 = addHeading(after: h5, level: 3, withText: "What did you see or hear without interpretations?")
            let l3 = addList(after: h6,
                             withItems: ["\"When you came late to the meeting _______.\"",
                                         "\"When you said _______.\"",
                                         "\"Three people said _______.\"",
                                         "\"I saw two errors _______.\"",
                                         "\"When the report was late _______.\""],
                             listStyle: .bullet)
            
            let h7 = addHeading(after: l3, level: 2, withText: "<hb>I</hb> - State the Impact")
            let h8 = addHeading(after: h7, level: 3, withText: "On multiple stakeholders and time frames")
            let l4 = addList(after: h8,
                             withItems: ["\"The customer was disappointed _______.\"",
                                         "\"Others on the team were angry _______.\"",
                                         "\"This is a poor reflection on you, because _______.\"",
                                         "\"The organization wondered if _______.\"",
                                         "\"We lost money and time _______.\"",
                                         "\"My boss asked me what was happening and was concerned _______.\"",
                                         "\"I lost trust, I was embarrassed _______.\""],
                             listStyle: .bullet)
            
            let h9 = addHeading(after: l4, level: 2, withText: "<hb>R</hb> - Resolution")
            let h10 = addHeading(after: h9, level: 3, withText: "On multiple stakeholders and time frames")
            let l5 = addList(after: h10,
                             withItems: ["\"What thoughts do you have on how this can be resolved?\"",
                                         "\"How can we prevent this from happening again?\"",
                                         "\"Next time I’d like to see this happen _______.\"",
                                         "\"Instead can you do…\""],
                             listStyle: .bullet)
            
            let hr1 = addHorizontalRule(after: l5)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipParagraph = addParagraph(after: leadershipHeading, withText: "The Ken Blanchard Company (2006) found the top three things leaders FAIL to do are:")
            let leadershipItems = addList(after: leadershipParagraph,
                                          withItems: ["Failing to provide appropriate feedback (praise, redirection) 82%",
                                                      "Failing to listen to or involve others in the process 81%",
                                                      "Failing to use a leadership style that is appropriate to the person, task, and situation (oversupervising or undersupervising) 76%"],
                                          listStyle: .number)
            _ = addList(after: leadershipItems,
                        withItems: ["<b>Tool:</b> Feedback", "<b>Competency:</b> Communication, Teamwork"],
                        listStyle: .bullet)
            
            break
        case 4:
            //MARK:- Chapter 4
            let title = "Coaching for Performance"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let p1 = addParagraph(after: movieButton, withText: "When coaching, it is important to save your advice or feedback to the end. Many managers in wanting to be helpful and to do their job well, go to step 5 immediately and the employee doesn’t feel heard or honored. You may have only thought about their problem for 3 seconds and give your answer, when your employee could have spent hours or days thinking about this issue. Often they don’t want an answer but validation for their thinking. Use the following steps:")
            
            let h1 = addHeading(after: p1, level: 2, withText: "Hear the problem or issue fully")
            let l1 = addList(after: h1, withItems: ["What happened?",
                                                    "When did it happen?",
                                                    "Why do they think it occurred?",
                                                    "Reflect back the content and emotions that you heard."],
                             listStyle: .bullet)
            
            let h2 = addHeading(after: l1, level: 2, withText: "Get more details")
            let l2 = addList(after: h2, withItems: ["Find out what they have tried?",
                                                    "How long has it been going on for?",
                                                    "Who has been affected or impacted by the problem?",
                                                    "What does anyone else think the problem is?",
                                                    "Is there something that worked even part of the time?",
                                                    "Reflect back the content and emotions that you heard."],
                             listStyle: .bullet)
            
            let h3 = addHeading(after: l2, level: 2, withText: "Honor their ideas for a solution")
            let l3 = addList(after: h3, withItems: ["It is their problem what do they think should be done next?",
                                                    "What is the benefit of their idea?",
                                                    "How long do they think it will take?",
                                                    "What major obstacles do they see with this solution?",
                                                    "What other resources will they need?",
                                                    "How will they know if it’s working or not?",
                                                    "If there is more than one solution, ask about the merit of each. If they had to rank each answer, which is the highest and why?"],
                             listStyle: .bullet)
            
            let h4 = addHeading(after: l3, level: 2, withText: "Ask if they want your feedback")
            let l4 = addList(after: h4, withItems: ["If not, just confirm what they will do",
                                                    "Offer it if you feel they really need it but they don’t want to hear it"],
                             listStyle: .bullet)
            
            let h5 = addHeading(after: l4, level: 2, withText: "Give your advice or feedback and make a plan")
            let l5 = addList(after: h5, withItems: ["Don’t just give the answer but use this as a mentoring moment",
                                                    "Make your thinking visible to them",
                                                    "What are your considerations for this choice?",
                                                    "Why did you select this?",
                                                    "What did you consider but rule out, and why?",
                                                    "In a similar experience you might have had, what was the impact of that decision?",
                                                    "How would you have improved on it knowing what you know today?",
                                                    "What things did they not consider with their choice, unintended consequences, impact on stakeholders, resources needed, time needed to implement it, skills needed?"],
                             listStyle: .bullet)
            
            let h6 = addHeading(after: l5, level: 2, withText: "PLAN")
            let l6 = addList(after: h6, withItems: ["What will be their next step?",
                                                    "When should they check back with you?",
                                                    "How will they know it's working?"],
                             listStyle: .bullet)
            
            let hr1 = addHorizontalRule(after: l6)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Coaching", "<b>Competency:</b> Developing Others"],
                                         listStyle: .bullet)
            _ = addQuote(after: leadershipList, withText: "\"Some 66% of employees today report they have too little interaction with their bosses and ONLY 21% know they are on track.\" <qi>Leadership IQ, 2010</qi>")

            break
        case 5:
            //MARK:- Chapter 5
            let title = "Assumption Ladder"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let l1 = addList(after: movieButton,
                             withItems: ["Are there biases in your thinking?",
                                                            "Have you considered multiple assumptions?",
                                                            "Have you invited others to challenge and support your thinking as you go up the ladder?",
                                                            "Dialogue is low on the ladder, debate is at the top rungs.",
                                                            "Have you made your thinking visible to others?"],
                             listStyle: .bullet)
            
            let h1 = addHeading(after: l1, level: 2, withText: "Your Ladder")
            let t1 = addTable(after: h1, withData: ["I take <tb>actions</tb> based on my conclusions",
                                                    "I draw <tb>conclusions</tb>",
                                                    "I make <tb>assumptions</tb> based on what I've selected",
                                                    "I <tb>select</tb> data to observe",
                                                    "<tb>Available data</tb> and experiences*"])
            let p1 = addParagraph(after: t1, withText: "*as a video recorder might capture it")
            
            let hr1 = addHorizontalRule(after: p1)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Assumption Ladder", "<b>Competency:</b> Decision Making"],
                                         listStyle: .bullet)
            _ = addQuote(after: leadershipList, withText: "\"The bottom line of your communication is you will be MISUNDERSTOOD and MISINTERPRETED. What if you started all communication with that premise, what would you do differently?\" <qi>Relly Nadler, Psy.D. 2011</qi>")
            break
        case 6:
            //MARK:- Chapter 6
            let title = "Assumption Ladder Applications"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let l1 = addList(after: movieButton,
                             withItems: ["Communicate your thinking rung by rung.",
                                         "Challenge others if they are at the top of the ladder."],
                             listStyle: .bullet)
            let p1 = addParagraph(after: l1, withText: "Below are some examples of sentences and sentence stubs that will help you and others walk up or down the ladder.")
            
            let h1 = addHeading(after: p1, level: 3, withText: "Actions")
            let t1 = addMultiTable(after: h1,
                                   withData: [["<b>As a Listener</b>", "<b>As a Speaker</b>"],
                                              ["I hear your plans...", "Therefore, this is my plan..."],
                                              ["What are they based on? How did you arrive at these plans?", "These are steps I’m taking..."]])
            
            let h2 = addHeading(after: t1, level: 3, withText: "Conclusions")
            let t2 = addMultiTable(after: h2,
                                   withData: [["<b>As a Listener</b>", "<b>As a Speaker</b>"],
                                              ["Tell me what conclusion you are drawing...", "It’s obvious to me... Therefore, I feel ..."],
                                              ["Could it be possible that...", "As a result... To summarize... My recommendation is..."]])
           
            let h3 = addHeading(after: t2, level: 3, withText: "Assumptions")
            let t3 = addMultiTable(after: h3,
                                   withData: [["<b>As a Listener</b>", "<b>As a Speaker</b>"],
                                              ["Tell me what your assumptions are...", "So I'm assuming..."],
                                              ["I’m curious, tell me more.", "Here’s what I attribute..."],
                                              ["Is that the only way to look at it?", "My interpretation is..."]])
            
            let h4 = addHeading(after: t3, level: 3, withText: "Selected Data")
            let t4 = addMultiTable(after: h4,
                                   withData: [["<b>As a Listener</b>", "<b>As a Speaker</b>"],
                                              ["What piece are you looking at?", "I am focusing on this piece."],
                                              ["I see you're focusing on...", "Here’s what I see happening..."],
                                              ["What is standing out to you from the data?", "This stands out to me..."]])
            
            let h5 = addHeading(after: t4, level: 3, withText: "Available Data")
            let t5 = addMultiTable(after: h5,
                                   withData: [["<b>As a Listener</b>", "<b>As a Speaker</b>"],
                                              ["Give me all the facts...", "Here are all the facts"],
                                              ["What are all the findings?", "Here are all the findings..."]])
            
            let hr1 = addHorizontalRule(after: t5)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Assumption Ladder", "<b>Competency:</b> Communication"],
                                         listStyle: .bullet)
            _ = addQuote(after: leadershipList, withText: "\"Companies with higher scores for their investment in human capital delivered stock returns that were FIVE times higher than that of companies with less emphasis on human capital.\" <qi>HBR in Center for Creative Leadership, 2009</qi>")
            
            break
        case 7:
            //MARK:- Chapter 7
            let title = "Emotional Audit"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let p1 = addParagraph(after: movieButton, withText: "To understand your emotions and better manage them, use these questions. Use this audit when you feel yourself getting upset, frustrated, or your triggers got activated. Wait 5 seconds till you get an answer to each question.")
            
            let l1 = addList(after: p1,
                             withItems: ["What am I thinking?",
                                         "What am I feeling?",
                                         "What do I want now?",
                                         "How am I getting in the way?",
                                         "What do I need to do differently now?"],
                             listStyle: .number)
            
            let hr1 = addHorizontalRule(after: l1)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Emotional Audit", "<b>Competency:</b> Self-Management"],
                                         listStyle: .bullet)
            _ = addQuote(after: leadershipList, withText: "\"Emotions are contagious and you are your most contagious one on your team as the leader. You are the “emotional thermostat” for the team. What are you spreading?\" <qi>Relly Nadler, Psy.D. 2011</qi>")
            
            break
        case 8:
            //MARK:- Chapter 8
            let title = "Tell, Sell, Test"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let h0 = addHeading(after: movieButton, level: 3, withText: "Leadership and Level of Involvement")
            
            let h1 = addHeading(after: h0, level: 3, withText: "Tell")
            let t1 = addMultiTable(after: h1,
                                   withData: [["<tb>When to Use</tb>", "<tb>Style</tb>"],
                                              ["You’ve been told to do it", "\"Here's what I want us to do\""],
                                              ["There’s no time for another solution", "\"This time, there's no choice\""]])
            
            let h2 = addHeading(after: t1, level: 3, withText: "Sell")
            let t2 = addMultiTable(after: h2,
                                   withData: [["<tb>When to Use</tb>", "<tb>Style</tb>"],
                                              ["You've made up your mind", "\"Here's my idea\""],
                                              ["You still need buy-in to get it done", "\"Can you support me, or do you need a better explanation?\""]])
            
            let h3 = addHeading(after: t2, level: 3, withText: "Test")
            let t3 = addMultiTable(after: h3,
                                   withData: [["<tb>When to Use</tb>", "<tb>Style</tb>"],
                                              ["You know about 70%", "\"I'm thinking this.\""],
                                              ["You want validation and input", "\"Do you think this will work?\""],
                                              ["You’d like feedback about your decision", "\"What am I missing?"]])
            
            let h4 = addHeading(after: t3, level: 3, withText: "Consult")
            let t4 = addMultiTable(after: h4,
                                   withData: [["<tb>When to Use</tb>", "<tb>Style</tb>"],
                                              ["You have a 30% idea of the result", "\"This is what I want it to end up like.\""],
                                              ["You think there’s some more good info that could be gained", "\"What are your ideas to make this work?\""]])
            
            let h5 = addHeading(after: t4, level: 3, withText: "Co-create")
            let t5 = addMultiTable(after: h5,
                                   withData: [["<tb>When to Use</tb>", "<tb>Style</tb>"],
                                              ["You’ve been told what to get", "\"This is where we need to go.\""],
                                              ["You don't know how to get there", "\"I don’t have the answer.\""],
                                              ["You have expertise and resources in the team", "\"I need your help.” “What do you think?"]])
            let styledText = "Adapted from THE FIFTH DISCIPLINE FIELDBOOK ©1994 by Peter M. Serge.\nUsed by permission by Doubleday, a division of Random House, Inc. \n©2003-06 Relly Nadler, Psy.D. All Rights Reserved."
                .styleAll(Style.font(.baseFont(ofSize: 11)).foregroundColor(.slateGray))
                .attributedString
            let citation = UITextView()
            citation.attributedText = styledText
            citation.configure()
            addSubview(citation)
            citation.snp.makeConstraints { (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.top.equalTo(t5.snp.bottom)
            }
            
            let hr1 = addHorizontalRule(after: citation)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Tell, Sell, Test", "<b>Competency:</b> Level of Involvement"],
                                         listStyle: .bullet)
            let q1 = addQuote(after: leadershipList, withText: "\"The 'manager default is to find fault' because you don’t have much time and your brain is wired to look for errors. Better to focus on what is right and what you want to have repeated.” <qi>Relly Nadler, Psy.D. 2011</qi>")
            _ = addQuote(after: q1, withText: "Fredrickson (2009) tell us the ideal in interactions is a 3:1 positive to negative ratio")
            
            break
        case 9:
            //MARK:- Chapter 9
            let title = "Managing Up & Partnering"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let intro = addParagraph(after: movieButton, withText: "When dealing with your supervisor or key customer, stakeholder or partner, it is important to understand their preferences and needs. This will help you align your performance to be viewed as a star by them. Below are questions and conversations to assist you.")
            
            let h1 = addHeading(after: intro, level: 3, withText: "Responsibility Alignment")
            let p1 = addParagraph(after: h1, withText: "What do they see as your top 5 responsibilities of your position? What do you see as your top 5 responsibilities of your position? Typically only 1.5 of the five are the same, therefore you may be working on the wrong priorities. This conversation will help you work on the areas that will get you the furthest in your supervisors’ or partners’ eyes.")
            
            let h2 = addHeading(after: p1, level: 3, withText: "Expectations Clarification")
            let p2 = addParagraph(after: h2, withText: "What are your supervisors or partners key expectations of you? Ask them: for this relationship to be a success, what are the key things I need to do and don’t do? Make sure you talk about responsiveness on email and voice mail.")
            
            let h3 = addHeading(after: p2, level: 3, withText: "Information Gathering")
            let p3 = addParagraph(after: h3, withText: "Do they like a formal approach or informal? Should you come with reports, data, agenda and be highly organized? Or be more informal and talk about the big picture possibilities and opportunities? Mirror their language; are they visual (\"see, view\") or auditory (\"sounds like, talk, resonate\") or kinesthetic (\"get a hold of, action\")?")
            
            let h4 = addHeading(after: p3, level: 3, withText: "Decision Style")
            let p4 = addParagraph(after: h4, withText: "How does your supervisor or partner make decisions? Quickly with limited data? Or deliberate with a lot of information? Do they like to discuss all the possibilities? Or should you leave the office and let them reflect on it and get back with them in a day? If you are not sure, ask them.")
            
            let h5 = addHeading(after: p4, level: 3, withText: "Conflict Style")
            let p5 = addParagraph(after: h5, withText: "Do they thrive in conflict or avoid it? Do you feel each conversation is part of a debating club? Or do they strive for harmony and peace at all costs? If you are not sure, ask them.")
            
            let hr1 = addHorizontalRule(after: p5)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> Managing Up", "<b>Competency:</b> Relationship Management"],
                                         listStyle: .bullet)
            _ = addQuote(after: leadershipList, withText: "\"People don’t leave their job they leave their boss. Your relationship with your boss affects your life satisfaction and health. Research has shown that if you feel not listened to and unfairly criticized by your boss consistently over time your chance of a heart attack goes up 30%.\" <qi>Goleman, 2006</qi>")
            
            break
        case 10:
            //MARK:- Chapter 10
            let title = "White Space Issues"
            titleLabel.text = title
            addTitle(titleLabel)
            
            let movieButton = addMovieButton(after: titleLabel)
            
            let intro = addParagraph(after: movieButton, withText: "The word <i>intelligence</i> comes from a Latin derivation, meaning \"entering through the lines.\" As a leader, people are always reading into what you are saying or not saying. They fill in the white space between the lines in moments. The bold lines indicate what was said.")
            
            let h1 = addHeading(after: intro, level: 3, withText: "--------")
            let p1 = addParagraph(after: h1, withText: "Negative signs indicate what gets filled in quickly by others, because they are intelligent. It is usually inaccurate, judgmental and not giving you or the leader the benefit of the doubt. It is done to have more of a sense of control.")
            
            let h2 = addHeading(after: p1, level: 3, withText: "++++++++")
            let p2 = addParagraph(after: h2, withText: "Positive signs indicate what you say when you fill in the white space proactively with accurate and positive data, talking about opportunities.")
            
            let h3 = addHeading(after: p2, level: 3, withText: "????????")
            let l1 = addList(after: h3,
                             withItems: ["White space is going to get filled any way by others; you can be preventative by telling your people what you know.",
                                "If you are not sick and tired of saying the same thing over and over again, you are not saying it enough.",
                                "If you don’t tell your people what is going on, they will think nothing is going on."],
                             listStyle: .bullet)
            
            let hr1 = addHorizontalRule(after: l1)
            let leadershipHeading = addHeading(after: hr1, level: 2, withText: "Leadership Keys")
            let leadershipList = addList(after: leadershipHeading,
                                         withItems: ["<b>Tool:</b> White Space", "<b>Competency:</b> Communication"],
                                         listStyle: .bullet)
            let q1 = addQuote(after: leadershipList, withText: "\"Leaders who fill in the \"white space\" with both inspiration AND enthusiastic emotion have extraordinary commitment and engagement from their employees.\" <qi>Zenger and Folkman, 2009</qi>")
            _ = addQuote(after: q1, withText: "What MICRO-INITIATIVES will you begin daily to create MACRO-IMPACTS for you and your team?")

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
    
    func addMovieButton(after: UIView) -> UIView {
        let buttonView = UIView()
        let movieButton = UIButton(frame: CGRect(x: 0, y: 0, width: screenWidth - (edgeMargin * 2), height: 80))
        movieButton.setTitle("Watch Video", for: .normal)
        movieButton.setTitleColor(UIColor.ebonyClay, for: .normal)
        buttonView.addSubview(movieButton)
        buttonView.layer.cornerRadius = 4
        buttonView.layer.borderWidth = 1
        buttonView.layer.borderColor = UIColor.loblolly.cgColor
        addSubview(buttonView)
        buttonView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.height.equalTo(80)
            make.top.equalTo(after.snp.bottom).offset(edgeMargin * 2)
        }
        movieButton.addTarget(self, action: #selector(watchVideo), for: .touchUpInside)
        return buttonView
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
            .style(tags: [hb])
            .styleAll(headingStyle)
            .attributedString
        let headingView = UITextView()
        headingView.attributedText = styledText
        headingView.configure()
        addSubview(headingView)
        headingView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom).offset(topMargin * 2)
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
            .style(tags: [qb, qi])
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
            make.top.equalTo(after.snp.bottom)
            make.bottom.equalTo(quoteText.snp.bottom).offset(edgeMargin)
        })
        
        return quoteView
    }
    
    func addList(after: UIView, withItems items: [String], listStyle: ListStyle) -> UIView {
        // make paragraph style
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .left, location: 16, options: NSDictionary() as! [String : Any])]
        paragraphStyle.defaultTabInterval = 16
        paragraphStyle.firstLineHeadIndent = 0
        paragraphStyle.headIndent = 16
        
        var marker = "\u{2022} "
        
        // set up the strings, add bullets and style
        let fullString: NSMutableAttributedString = ""
            .styleAll(bodyStyle)
            .attributedString as! NSMutableAttributedString
        for (index, item) in items.enumerated() {
            if listStyle == .number { marker = "\(index + 1). " }
            let formattedString = (marker + "\(item)\n")
                .style(tags: [b, i])
                .styleAll(listItemStyle.paragraphStyle(paragraphStyle))
                .attributedString
            fullString.append(formattedString)
        }
        
        // configure the view
        let listView = UITextView()
        listView.attributedText = fullString
        listView.configure()
        addSubview(listView)
        listView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom)
        })
        
        return listView
    }
    
    func addTable(after: UIView, withData data: [String]) -> UIView {
        // make a view for each item in data array
        var cells: [UIView] = []
        for cellText in data {
            // make styled text
            let styledText = cellText
                .style(tags: [ti, tb])
                .styleAll(tableStyle)
                .attributedString
            
            // create view for text
            let cellTextView = UILabel()
            cellTextView.attributedText = styledText
            cellTextView.numberOfLines = 0
            
            // create view to hold textview and draw border
            let cellView = UIView()
            cellView.layer.borderColor = UIColor.loblolly.cgColor
            cellView.layer.borderWidth = 0.5
            cellView.addSubview(cellTextView)
            cellTextView.snp.makeConstraints({ (make) in
                make.left.equalToSuperview().inset(edgeMargin)
                make.right.equalToSuperview().inset(edgeMargin)
                make.height.equalTo(48)
                make.top.equalToSuperview()
            })
            
            cells.append(cellView)
        }
        
        let tableView = UIView()
        tableView.layer.borderColor = UIColor.loblolly.cgColor
        tableView.layer.borderWidth = 1.0
        tableView.layer.cornerRadius = 3.0
        tableView.clipsToBounds = true
        addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom)
            make.height.equalTo(CGFloat(cells.count) * cellHeight)
        })
        
        let table = UIStackView(arrangedSubviews: cells)
        table.axis = .vertical
        table.distribution = .fillEqually
        table.alignment = .fill
        table.spacing = 0
        tableView.addSubview(table)
        table.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(CGFloat(cells.count) * cellHeight)
        })
        
        return tableView
    }
    
    func addMultiTable(after: UIView, withData data: [[String]]) -> UIView {
        // make a view for each item in data array
        var rows: [UIView] = []
        
        for row in data {
            var columns: [UIView] = []
            for cellText in row {
                // make styled text
                let styledText = cellText
                    .style(tags: [ti, tb])
                    .styleAll(tableStyle)
                    .attributedString
                
                // create view for text
                let cellTextView = UILabel()
                cellTextView.attributedText = styledText
                cellTextView.numberOfLines = 0
                
                // create view to hold textview and draw border
                let cellView = UIView()
                cellView.layer.borderColor = UIColor.loblolly.cgColor
                cellView.layer.borderWidth = 0.5
                cellView.addSubview(cellTextView)
                let calcCellHeight = cellHeight
                cellTextView.snp.makeConstraints({ (make) in
                    make.left.equalToSuperview().inset(edgeMargin)
                    make.right.equalToSuperview().inset(edgeMargin)
                    make.height.equalTo(calcCellHeight)
                    make.top.equalToSuperview()
                })
                columns.append(cellView)
            }
            let rowTable = UIStackView(arrangedSubviews: columns)
            rowTable.axis = .horizontal
            rowTable.distribution = .fillEqually
            rowTable.alignment = .fill
            rowTable.spacing = 0
            rows.append(rowTable)
        }
        
        let tableView = UIView()
        tableView.layer.borderColor = UIColor.loblolly.cgColor
        tableView.layer.borderWidth = 1.0
        tableView.layer.cornerRadius = 3.0
        tableView.clipsToBounds = true
        addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(edgeMargin)
            make.right.equalToSuperview().inset(edgeMargin)
            make.top.equalTo(after.snp.bottom)
            make.height.equalTo(CGFloat(rows.count) * cellHeight)
        })
        
        let table = UIStackView(arrangedSubviews: rows)
        table.axis = .vertical
        table.distribution = .fillEqually
        table.alignment = .fill
        table.spacing = 0
        tableView.addSubview(table)
        table.snp.makeConstraints({ (make) in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(CGFloat(rows.count) * cellHeight)
        })
        
        return tableView
    }
    
    func watchVideo() {
        chapterDelegate.watchVideo()
    }
}
