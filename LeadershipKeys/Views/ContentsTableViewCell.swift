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
    let indicator = UIView()
    let indicatorDot = CAShapeLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if selected {
            indicator.frame = CGRect(x: 8, y: chapterTitle.center.y - 3.5, width: 7, height: 7)
            indicatorDot.frame = indicator.bounds
            let dotPath = UIBezierPath(ovalIn: indicatorDot.frame)
            indicatorDot.path = dotPath.cgPath
            indicator.layer.addSublayer(indicatorDot)
            addSubview(indicator)
        }
    }
    
    func setup() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
        indicatorDot.fillColor = UIColor.azureRadiance.cgColor
    }

}
