//
//  MoviePlayer.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 5/3/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import AVFoundation

class MoviePlayer: UIView {
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    override class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
