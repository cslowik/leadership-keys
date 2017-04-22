//
//  FileHelper.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/18/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class FileHelper {
    
    static let main = FileHelper()
    
    var chapters: [[String:String]]
    
    
    init() {
        chapters = [["title" : "Chapter One", "subtitle" : "CH 1"]]
    }
    
    func load() {
        readChapters()
    }
    
    func readChapters() {
        
        let pathStr = Bundle.main.path(forResource: "Contents", ofType: "plist")
        let data: NSData? = NSData(contentsOfFile: pathStr!)
        let newChapters = try! PropertyListSerialization.propertyList(from:data! as Data, options: [], format: nil) as! [[String:String]]
        
        chapters = newChapters
    }
    
    func buildChapters() -> [ChapterVC] {
        var chapterVCArray: [ChapterVC] = []
        for (index, chapter) in chapters.enumerated() {
            chapterVCArray.append(buildChapter(chapter, withIndex: index)!)
        }
        return chapterVCArray
    }
    
    private func buildChapter(_ chapter: [String:String], withIndex index: Int) -> ChapterVC? {
        
        if let path = Bundle.main.path(forResource: "ch\(index)", ofType: "md") {
            do {
                let text = try String(contentsOfFile: path)
                let newVC = ChapterVC(index: index, title: chapter["title"]!, subtitle: chapter["subtitle"]!, text: text)
                
                return newVC
            }
            catch {
                print("text not found")
                return nil
            }
        } else {
            print("file not found")
            return nil
        }
            
        
        
    }
    
}
