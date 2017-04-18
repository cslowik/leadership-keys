//
//  ArticleVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ArticleVC: UIPageViewController {
    
    private(set) lazy var chapterViewControllers: [UIViewController] = {
        return [ChapterVC.generate(0)]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Overview"
        view.backgroundColor = UIColor.white
        
        dataSource = self
        
        if let firstViewController = chapterViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
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

extension ArticleVC : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        // next vc
        return nil
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        // previous vc
        return nil
    }
}
