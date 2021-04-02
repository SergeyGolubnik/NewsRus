//
//  NewsViewController.swift
//  NewsRus
//
//  Created by СОВА on 02.04.2021.
//

import UIKit
import SafariServices

class NewsViewController: UIViewController {
    
    var newsDetailView: Article!

    @IBOutlet weak var titleNewsView: UILabel!
    @IBOutlet weak var imageNewsView: UIImageView!
    @IBOutlet weak var discriptionsNewsView: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNewsView.text = newsDetailView.title
        discriptionsNewsView.text = newsDetailView.description
        let urlImage = URL(string: newsDetailView.urlToImage)
        imageNewsView.kf.setImage(with: urlImage)
        
        
    }
    
    
    @IBAction func buttonNewsViewWeb(_ sender: UIButton) {
        if let url = URL(string:newsDetailView.url) {
            let safari = SFSafariViewController(url: url)
            present(safari, animated: true, completion: nil)
        }
        
    }
    


}
