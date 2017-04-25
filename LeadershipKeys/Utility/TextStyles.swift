//
//  TextStyles.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/25/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import Foundation
import Atributika

let b = Style("b").font(.boldBodyFont)
let i = Style("i").font(.italicBodyFont)
let bodyStyle = Style.font(UIFont.bodyFont).foregroundColor(UIColor.slateGray)
let subtitleStyle = Style.font(UIFont.subtitleFont).foregroundColor(UIColor.ebonyClay)
let quoteStyle = Style.font(UIFont.baseFont(ofSize: 16)).foregroundColor(UIColor.ebonyClay)
