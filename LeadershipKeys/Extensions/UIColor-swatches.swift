//
//  UIColor-swatches.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

extension UIColor {
    
    //// Cache
    
    private struct Cache {
        static let loblolly: UIColor = UIColor(red:0.718, green:0.769, blue:0.796, alpha:1.000)             // light gray
        static let ebonyClay: UIColor = UIColor(red:0.110, green:0.141, blue:0.161, alpha:1.000)            // dark text
        static let azureRadiance: UIColor = UIColor(red:0.000, green:0.569, blue:0.918, alpha:1.000)        // blue
        static let athensGray: UIColor = UIColor(red:0.969, green:0.973, blue:0.980, alpha:1.000)           // light gray cell background
    }
    
    //// Colors
    
    public class var loblolly: UIColor { return Cache.loblolly }
    public class var ebonyClay: UIColor { return Cache.ebonyClay }
    public class var azureRadiance: UIColor { return Cache.azureRadiance }
    public class var athensGray: UIColor { return Cache.athensGray }
    
}
