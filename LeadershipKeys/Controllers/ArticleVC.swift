//
//  ArticleVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import Pages
import MessageUI

class ArticleVC: PagesController, ContentsDelegate, MenuDelegate, MFMailComposeViewControllerDelegate {
    
    var chapterViewControllers: [ChapterVC] = []
    var currentChapter: Int {
        get {
            return currentIndex
        }
    }
    var menuIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        dataSource = self
        showPageControl = false
        automaticallyAdjustsScrollViewInsets = false
        //enableSwipe = false
        
        if chapterViewControllers == [] {
            chapterViewControllers = FileHelper.main.buildChapters()
        }
        
        add(chapterViewControllers)
        
        updateView()
    }
    
    func updateView() {
        navigationItem.title = FileHelper.main.chapters[currentIndex]["subtitle"]
    }
    
    @IBAction func contentsTapped(_ sender: Any) {
        print("contents")
        showTOC()
    }
    @IBAction func menuTapped(_ sender: Any) {
        print("menu")
        showMenu()
    }
    
    func showTOC() {
        performSegue(withIdentifier: "showContents", sender: self)
    }
    func showMenu() {
        performSegue(withIdentifier: "showMenu", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showContents" {
            let contentsVC = segue.destination as! UINavigationController
            let toc = contentsVC.viewControllers.first as! ContentsVC
            toc.delegate = self
        }
        if segue.identifier == "showMenu" {
            let menuVC = segue.destination as! UINavigationController
            let menu = menuVC.viewControllers.first as! MenuVC
            menu.delegate = self
        }
    }
    
    override func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        super.pageViewController(pageViewController, didFinishAnimating: finished, previousViewControllers: previousViewControllers, transitionCompleted: completed)
        updateView()
    }
    
    //MARK:- Sharing UI
    
    func shareViaEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setMessageBody("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><Title>Free Leadership Keys App</title></head><body style=\"background-color: #ededed;\"><table width=\"320\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Helvetica, Verdana, Arial, sans-serif;\"><tr><td align=\"center\"><table width=\"300\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" style=\"background-color: white; line-height: 18px; font-size: 14px; color:#333333;\"><tr><td><p>Available now: <i>Get Dr. Nadler's</i> <b>Leadership Keys for the iPhone, iPad and iPod Touch.</b> Each of the 10 Leadership Keys provides the steps to becoming a great leader. Each Key also has a video describing how to apply it in your daily work. <i><b>Get just in time</b> leadership skills to propel you into the top 10%</i> with these great keys.</p><p align=\"center\"><img src=\"http://d3t3jbuppiyjdl.cloudfront.net/misc/leadershipkeys.jpg\" alt=\"Leadership Keys\" width=\"300\" height=\"450\"/></p><p align=\"center\"><a href=\"http://itunes.apple.com/us/app/leadership-keys/id457296921?ls=1&mt=8\" style=\"color: #57232f;\">Get the App now from the App Store</a></p></td></tr></table></td></tr></table></body></html>", isHTML: true)
            present(mail, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    ////MARK: - ContentsDelegate
    
    func didSelectChapter(_ index: Int, sender: ContentsVC) {
        goTo(index)
        sender.dismiss(animated: true, completion: nil)
        updateView()
    }
    
    ////MARK: - MenuDelegate
    
    func didSelectItem(_ index: Int, sender: MenuVC) {
        sender.dismiss(animated: true, completion: nil)
        print(index)
        switch index {
        case 1:
            shareViaEmail()
        default:
            break
        }
    }
}
