//
//  UITextView-configuration.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/25/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit

extension UITextView {
    func configure() {
        isEditable = false
        isSelectable = false
        isScrollEnabled = false
        backgroundColor = UIColor.clear
    }
}
