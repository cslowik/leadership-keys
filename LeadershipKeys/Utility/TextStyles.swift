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
let titleStyle = Style.font(UIFont.titleFont).foregroundColor(UIColor.ebonyClay)
let h3 = Style.font(UIFont.smallHeading).foregroundColor(UIColor.ebonyClay)
let subtitleStyle = Style.font(UIFont.subtitleFont).foregroundColor(UIColor.ebonyClay)
let quoteStyle = Style.font(UIFont.baseFont(ofSize: 16)).foregroundColor(UIColor.ebonyClay)
let tableStyle = Style.font(UIFont.baseFont(ofSize: 14)).foregroundColor(UIColor.ebonyClay)
