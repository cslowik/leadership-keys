//
//  FreeToolsVC.swift
//  LeadershipKeys
//
//  Created by Chris Slowik on 5/3/17.
//  Copyright © 2017 Chris Slowik. All rights reserved.
//

import UIKit
import WebKit

class FreeToolsVC: UIViewController, UIWebViewDelegate {
    
    var webView: WebView!
    let url = URL(string: "http://www.truenorthleadership.com/ei-leadership-tools/")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        webView = WebView()
        view = webView
        webView.loadUrl(url)
    }

}

class WebView: WKWebView {
    init() {
        let _view = UIView()
        super.init(frame: _view.frame, configuration: WKWebViewConfiguration())
        autoresizingMask = _view.autoresizingMask
    }
    
    required init?(coder: NSCoder) {
        if let _view = UIView(coder: coder) {
            super.init(frame: _view.frame, configuration: WKWebViewConfiguration())
            autoresizingMask = _view.autoresizingMask
        } else {
            return nil
        }
    }
    
    func loadUrl(_ url: URL) {
        load(URLRequest(url: url))
    }
}
