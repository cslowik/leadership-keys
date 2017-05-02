//
//  ArticleVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import Pages

class ArticleVC: PagesController, ContentsDelegate, MenuDelegate {
    
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
    
    ////MARK: - ContentsDelegate
    
    func didSelectChapter(_ index: Int, sender: ContentsVC) {
        goTo(index)
        sender.dismiss(animated: true, completion: nil)
        updateView()
    }
    
    ////MARK: - MenuDelegate
    
    func didSelectItem(_ index: Int, sender: MenuVC) {
        print(index)
        sender.dismiss(animated: true, completion: nil)
    }
}
