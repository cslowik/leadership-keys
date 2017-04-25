//
//  ScrollingNav.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
//import AMScrollingNavbar

class ScrollingNav: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.backgroundColor = UIColor.white
        navigationBar.tintColor = UIColor.loblolly
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont.navFont,
                                             NSForegroundColorAttributeName: UIColor.ebonyClay]
        
    }

}
