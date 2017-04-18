//
//  MenuVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//


import Foundation
import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
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


// MARK : TableViewDataSource & Delegate Methods

extension MenuVC {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.font = UIFont.menuFont
        cell.textLabel?.textColor = UIColor.ebonyClay
        cell.textLabel?.text  = titles[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            
            break
        case 1:
            
            break
        case 2:
            
            break
        case 3:
            
            break
        default:
            break
        }
        
        
    }
    
}
