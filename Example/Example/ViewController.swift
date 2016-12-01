//
//  ViewController.swift
//  Example
//
//  Created by Saravudh Sinsomros on 12/1/2559 BE.
//  Copyright © 2559 Saravudh Sinsomros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var mSearchBar: UISearchBar!
    @IBOutlet weak var mTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mSearchBar.delegate = self
        mTextView.text = ""
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mTextView.text = mSearchBar.text
    }
}

