//
//  ViewController.swift
//  Example
//
//  Created by Saravudh Sinsomros on 12/1/2559 BE.
//  Copyright © 2559 Saravudh Sinsomros. All rights reserved.
//

import UIKit
import uLoda

class ViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var mWebView: UIWebView!
    @IBOutlet weak var mSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mSearchBar.delegate = self
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        MLEng2Thai.search(word: mSearchBar.text!, completion: {(result: String, isSuccess: Bool) in
            self.mWebView.loadHTMLString(result, baseURL: nil)
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        })
    }
}

