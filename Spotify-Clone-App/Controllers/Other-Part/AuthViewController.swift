//
//  AuthViewController.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 1.05.2022.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {

    private var webView: WKWebView {
        let preferenses = WKWebpagePreferences()
        preferenses.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = preferenses
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
