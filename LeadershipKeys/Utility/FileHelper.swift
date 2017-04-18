//
//  FileHelper.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/18/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import Foundation

class FileHelper {
    
    static let main = FileHelper()
    
    var chapters: [[String:String]]
    
    init() {
        chapters = [["title" : "Chapter One", "subtitle" : "CH 1"]]
    }
    
    func readChapters() {
        
        let pathStr = Bundle.main.path(forResource: "Contents", ofType: "plist")
        let data: NSData? = NSData(contentsOfFile: pathStr!)
        let newChapters = try! PropertyListSerialization.propertyList(from:data! as Data, options: [], format: nil) as! [[String:String]]
        
        chapters = newChapters
    }
    
}
