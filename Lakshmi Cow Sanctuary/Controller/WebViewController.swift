//
//  WebViewController.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 12/02/23.
//

import Foundation
import UIKit
import WebKit

class WebViewController: UIViewController {
    private let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func load(url: URL) {
        DispatchQueue.global(qos: .userInitiated).async {
            let request = URLRequest(url: url)
            DispatchQueue.main.async {
                self.webView.load(request)
            }
        }
    }
}
