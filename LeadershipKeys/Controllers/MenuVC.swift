//
//  MenuVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//


import UIKit
import MessageUI

protocol MenuDelegate {
    func didSelectItem(_ index: Int, sender: MenuVC)
    var menuIndex: Int { get }
}

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuItem: UILabel!
    
    var delegate: MenuDelegate?
    
    let titles: [String] = ["Leadership Keys", "Share via Email", "Free Tools", "About"]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}



//MARK:- TableViewDataSource & Delegate Methods

extension MenuVC {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        
        cell.backgroundColor = UIColor.clear
        cell.menuItem.font = UIFont.menuFont
        cell.menuItem.textColor = UIColor.ebonyClay
        cell.menuItem.text  = titles[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectItem(indexPath.row, sender: self)
    }
    
}
