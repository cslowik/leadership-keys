//
//  UIFont-textStyles.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

extension UIFont {
    
    class func baseFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "OpenSans", size: ofSize) ?? UIFont.systemFont(ofSize:ofSize)
    }
    
    class func boldFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "OpenSans-Semibold", size: ofSize) ?? UIFont.boldSystemFont(ofSize:ofSize)
    }
    
    class func italicFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "OpenSans-Italic", size: ofSize) ?? UIFont.italicSystemFont(ofSize:ofSize)
    }
    
    class func headerFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Regular", size: ofSize) ?? UIFont.systemFont(ofSize:ofSize)
    }
    
    class func boldHeaderFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Bold", size: ofSize) ?? UIFont.boldSystemFont(ofSize:ofSize)
    }
    
    class func italicHeaderFont(ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-Italic", size: ofSize) ?? UIFont.italicSystemFont(ofSize: ofSize)
    }
    
    //// Cache
    
    private struct Cache {
        // UI Fonts
        static let navFont: UIFont = UIFont.baseFont(ofSize: 18)
        static let buttonFont: UIFont = UIFont.boldFont(ofSize: 18)
        static let menuFont: UIFont = UIFont.headerFont(ofSize: 21)
        static let chapterTitleFont: UIFont = UIFont.boldFont(ofSize: 18)
        static let chapterIndexFont: UIFont = UIFont.baseFont(ofSize: 16)
        static let smallFont: UIFont = UIFont.baseFont(ofSize: 14)
        static let inputFont: UIFont = UIFont.baseFont(ofSize: 18)
        
        // Article Fonts
        static let titleFont: UIFont = UIFont.boldHeaderFont(ofSize: 30)
        static let boldHeaderFont: UIFont = UIFont.boldHeaderFont(ofSize: 30)
        static let italicHeaderFont: UIFont = UIFont.italicHeaderFont(ofSize: 30)
        static let subtitleFont: UIFont = UIFont.headerFont(ofSize: 24)
        static let smallHeading: UIFont = UIFont.headerFont(ofSize: 21)
        static let bodyFont: UIFont = UIFont.baseFont(ofSize: 18)
        static let boldBodyFont: UIFont = UIFont.boldFont(ofSize: 18)
        static let italicBodyFont: UIFont = UIFont.italicFont(ofSize: 18)
    }
    
    //// Fonts
    
    public class var navFont: UIFont { return Cache.navFont }
    public class var buttonFont: UIFont { return Cache.buttonFont }
    public class var menuFont: UIFont { return Cache.menuFont }
    public class var chapterTitleFont: UIFont { return Cache.chapterTitleFont }
    public class var chapterIndexFont: UIFont { return Cache.chapterIndexFont }
    public class var smallFont: UIFont { return Cache.smallFont }
    public class var inputFont: UIFont { return Cache.inputFont }
    
    public class var titleFont: UIFont { return Cache.titleFont }
    public class var boldHeaderFont: UIFont { return Cache.boldHeaderFont }
    public class var italicHeaderFont: UIFont { return Cache.italicHeaderFont }
    public class var subtitleFont: UIFont { return Cache.subtitleFont }
    public class var smallHeading: UIFont { return Cache.smallHeading }
    public class var bodyFont: UIFont { return Cache.bodyFont }
    public class var boldBodyFont: UIFont { return Cache.boldBodyFont }
    public class var italicBodyFont: UIFont { return Cache.italicBodyFont }
}
