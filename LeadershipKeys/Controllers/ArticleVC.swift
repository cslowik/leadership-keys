//
//  ArticleVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ArticleVC: UIPageViewController {
    
    private(set) lazy var chapterViewControllers: [ChapterVC] = {
        var chapters: [ChapterVC] = []
        for (chapterIndex, chapter) in FileHelper.main.chapters.enumerated() {
            let newVC = ChapterVC(index: chapterIndex, title: chapter["title"]!, subtitle: chapter["subtitle"]!)
            chapters.append(newVC)
        }
        return chapters
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        dataSource = self
        
        setViewControllers([chapterViewControllers.first!], direction: .forward, animated: true, completion: nil)
        navigationItem.title = chapterViewControllers.first?.chapterSubtitle
        
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
    
    
    
}


// MARK: UIPageViewControllerDataSource

extension ArticleVC : UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        // next vc
        guard let viewControllerIndex = chapterViewControllers.index(of: viewController as! ChapterVC) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let chapterViewControllersCount = chapterViewControllers.count
        
        guard chapterViewControllersCount != nextIndex else {
            return nil
        }
        
        guard chapterViewControllersCount > nextIndex else {
            return nil
        }
        return chapterViewControllers[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        // previous vc
        guard let viewControllerIndex = chapterViewControllers.index(of: viewController as! ChapterVC) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard chapterViewControllers.count > previousIndex else {
            return nil
        }
        return chapterViewControllers[previousIndex]
    }
}
