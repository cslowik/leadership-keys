//
//  NSObject-CallSelector.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 4/13/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import Foundation

extension NSObject {
    
    func callSelectorAsync(_ selector: Selector, object: AnyObject?, delay: TimeInterval) -> Timer {
        let timer = Timer.scheduledTimer(timeInterval: delay, target: self, selector: selector, userInfo: object, repeats: false)
        return timer
    }
    
    func callSelector(_ selector: Selector, object: AnyObject?, delay: TimeInterval) {
        let delay = delay * Double(NSEC_PER_SEC)
        let time = DispatchTime.now() + Double(Int64(delay)) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: time, execute: {
            Thread.detachNewThreadSelector(selector, toTarget:self, with: object)
        })
    }
}
