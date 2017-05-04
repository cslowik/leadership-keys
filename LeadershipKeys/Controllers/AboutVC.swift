//
//  AboutVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 5/3/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import Atributika

class AboutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        loadContents()
    }
    
    func loadContents() {
        let headingView = UITextView()
        headingView.attributedText = "The Author".styleAll(subtitleStyle).attributedString
        headingView.configure()
        view.addSubview(headingView)
        headingView.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(32)
            make.height.equalTo(64)
        })
        let p1 = UITextView()
        p1.attributedText = "Dr. Relly Nadler is a psychologist, master level Executive Coach (MCC), author, speaker, radio host and corporate trainer. His expertise is turning Emotional Intelligence Leadership concepts into step by step processes or tools to simplify leadership development for executives.".styleAll(bodyStyle).attributedString
        p1.configure()
        view.addSubview(p1)
        p1.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(headingView.snp.bottom).offset(16)
        }
        let p2 = UITextView()
        p2.attributedText = "Enjoy the <b><i>Just In Time</b></i> leadership tips APP <b><i>at your fingertips</b></i>. And pass it on.".style(tags: [b, i]).styleAll(bodyStyle).attributedString
        p2.configure()
        view.addSubview(p2)
        p2.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(p1.snp.bottom).offset(16)
        }
        let p3 = UITextView()
        p3.attributedText = "Go to: <a>www.truenorthleadership.com</a> for Dr. Nadler's services, books, speaking topics and FREE tools.".style(tags: [b, i]).styleAll(bodyStyle).attributedString
        p3.configure()
        p3.isSelectable = true
        p3.dataDetectorTypes = .link
        p3.linkTextAttributes = [NSForegroundColorAttributeName: UIColor.azureRadiance]
        view.addSubview(p3)
        p3.snp.makeConstraints { (make) in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(p2.snp.bottom).offset(16)
        }
    }
}
