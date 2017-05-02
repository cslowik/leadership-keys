//
//  VideoPlayer.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 5/2/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import SnapKit
import AVFoundation

class VideoPlayer: UIView {
    
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    var videoURL: String?
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
    
    init(frame: CGRect, url: String) {
        videoURL = url
        super.init(frame: frame)
        addSubview(spinner)
        spinner.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 28, height: 28))
            make.center.equalToSuperview()
        }
        
        spinner.startAnimating()
        player = AVPlayer(playerItem: AVPlayerItem(asset: AVAsset(url: URL(string: videoURL!)!)))
        player?.play()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }

}
