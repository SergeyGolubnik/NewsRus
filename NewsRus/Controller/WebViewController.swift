//
//  WebViewController.swift
//  NewsRus
//
//  Created by СОВА on 25.03.2021.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var newsComment: Article!

    @IBOutlet weak var newsWeb: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: (self.newsComment.url)) else {return}
        newsWeb.load(URLRequest(url: url))
    }
    

}
