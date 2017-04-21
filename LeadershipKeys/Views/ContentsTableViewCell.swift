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
        let dotPath = UIBezierPath(ovalIn: indicatorDot.frame)
        indicatorDot.path = dotPath.cgPath
        
        super.setSelected(selected, animated: false)
    }
    
    func setup() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
        indicator.layer.addSublayer(indicatorDot)
        addSubview(indicator)
    }
    
    override func layoutSubviews() {
        indicator.frame = CGRect(x: 8, y: chapterTitle.center.y - 3.5, width: 7, height: 7)
        indicatorDot.frame = indicator.bounds
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        if isSelected {
            indicatorDot.fillColor = UIColor.azureRadiance.cgColor
        } else {
            indicatorDot.fillColor = contentView.backgroundColor?.cgColor
        }
        CATransaction.commit()
    }

}
