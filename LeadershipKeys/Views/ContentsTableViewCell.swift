//
//  ContentsTableViewCell.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/17/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import SnapKit

class ContentsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chapterTitle: UILabel!
    @IBOutlet weak var chapterIndex: UILabel!
    @IBOutlet weak var dot: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        // Configure the view for the selected state
        if selected {
            UIView.animate(withDuration: 0.18, animations: { 
                self.backgroundColor = UIColor.azureRadiance
                self.chapterIndex.textColor = UIColor.white
                self.chapterTitle.textColor = UIColor.white
            })
        } else {
            UIView.animate(withDuration: 0.18, animations: {
                self.backgroundColor = UIColor.clear
                self.chapterIndex.textColor = UIColor.ebonyClay
                self.chapterTitle.textColor = UIColor.ebonyClay
            })
        }
        super.setSelected(selected, animated: false)
    }
    
    
    func setup() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
    }
}
