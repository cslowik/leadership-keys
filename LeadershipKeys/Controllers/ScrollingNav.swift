//
//  ScrollingNav.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import MessageUI
import SideMenu
import SafariServices

class ScrollingNav: UINavigationController, MenuDelegate, MFMailComposeViewControllerDelegate, SFSafariViewControllerDelegate {
    
    var menuIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.backgroundColor = UIColor.white
        navigationBar.tintColor = UIColor.loblolly
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont.navFont,
                                             NSForegroundColorAttributeName: UIColor.ebonyClay]
        FileHelper.main.load()
        SideMenuManager.menuWidth = UIScreen.main.bounds.width - 48
        SideMenuManager.menuEnableSwipeGestures = false
        
        SideMenuManager.menuAnimationBackgroundColor = UIColor.clear
        SideMenuManager.menuAnimationPresentDuration = 0.5
        SideMenuManager.menuAnimationUsingSpringWithDamping = 1
        SideMenuManager.menuAnimationInitialSpringVelocity = 0
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
    
    func freeTools() {
        let leadershipURL = URL(string: "http://www.truenorthleadership.com/ei-leadership-tools/")!
        let safariController = SFSafariViewController(url: leadershipURL)
        safariController.delegate = self
        self.present(safariController, animated: true, completion: nil)
    }
    
    func about() {
        let aboutVC = AboutVC()
        show(aboutVC, sender: self)
    }

    ////MARK: - MenuDelegate
    
    func didSelectItem(_ index: Int, sender: MenuVC) {
        switch index {
        case 1:
            sender.dismiss(animated: true, completion: nil)
            shareViaEmail()
            break
        case 2:
            sender.dismiss(animated: true, completion: nil)
            callSelector(#selector(freeTools), object: self, delay: 0.5)
            break
        case 3:
            sender.dismiss(animated: true, completion: nil)
            about()
            break
        default:
            sender.dismiss(animated: true, completion: nil)
            break
        }
    }
    
    ////MARK: - SFSafariViewControllerDelegate
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("loaded")
    }
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("finish")
    }
}
