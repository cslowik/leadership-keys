//
//  MainVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import SideMenu

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(launch), userInfo: nil, repeats: false)
        configureSideMenu()
        
        FileHelper.main.readChapters()
        print(FileHelper.main.chapters)
    }

    func launch() {
        performSegue(withIdentifier: "launchApp", sender: self)
    }
    
    func configureSideMenu() {
        SideMenuManager.menuWidth = UIScreen.main.bounds.width - 48
        SideMenuManager.menuEnableSwipeGestures = false
        
        SideMenuManager.menuAnimationBackgroundColor = UIColor.clear
        SideMenuManager.menuAnimationPresentDuration = 0.5
        SideMenuManager.menuAnimationUsingSpringWithDamping = 1
        SideMenuManager.menuAnimationInitialSpringVelocity = 0
    }

}
