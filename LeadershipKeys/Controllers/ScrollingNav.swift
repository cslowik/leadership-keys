//
//  ScrollingNav.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class ScrollingNav: ScrollingNavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.backgroundColor = UIColor.white
        navigationBar.tintColor = UIColor.loblolly
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont.navFont,
                                             NSForegroundColorAttributeName: UIColor.ebonyClay]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
