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
let hb = Style("hb").font(.boldHeaderFont)
let bodyStyle = Style.font(.bodyFont).foregroundColor(.slateGray)
let listItemStyle = Style.font(.baseFont(ofSize: 16)).foregroundColor(.slateGray)
let titleStyle = Style.font(.titleFont).foregroundColor(.ebonyClay)
let h3 = Style.font(.smallHeading).foregroundColor(.ebonyClay)
let subtitleStyle = Style.font(.subtitleFont).foregroundColor(.ebonyClay)
let quoteStyle = Style.font(.baseFont(ofSize: 16)).foregroundColor(.ebonyClay)
let tableStyle = Style.font(.baseFont(ofSize: 14)).foregroundColor(.ebonyClay)
