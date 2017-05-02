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
    let videoView = UIView()
    var videoPlayer: AVPlayerLayer?
    var videoURL: String?
    
    init(frame: CGRect, url: String) {
        super.init(frame: frame)
        addSubview(videoView)
        videoView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        addSubview(spinner)
        spinner.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 28, height: 28))
            make.center.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
