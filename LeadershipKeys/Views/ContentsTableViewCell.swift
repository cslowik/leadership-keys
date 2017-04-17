//
//  ContentsTableViewCell.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

class ContentsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chapterTitle: UILabel!
    @IBOutlet weak var chapterIndex: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setup() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
        
    }

}
