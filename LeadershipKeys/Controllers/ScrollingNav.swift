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
    
    let titleFont = UIFont(name: "OpenSans-Regular", size: 18)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.backgroundColor = UIColor.white
        navigationBar.tintColor = UIColor(red:0.718, green:0.769, blue:0.796, alpha:1.000)
        navigationBar.titleTextAttributes = [NSFontAttributeName: titleFont ?? UIFont.systemFont(ofSize: 18),
                                             NSForegroundColorAttributeName: UIColor(red:0.149, green:0.188, blue:0.208, alpha:1.000)]
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
