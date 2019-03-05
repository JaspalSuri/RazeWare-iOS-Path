//
//  AboutViewController.swift
//  Bull's Eye
//
//  Created by Jaspal on 3/4/19.
//  Copyright © 2019 Jaspal Suri. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
