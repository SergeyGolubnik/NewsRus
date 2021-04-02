//
//  CommensTableViewCell.swift
//  NewsRus
//
//  Created by СОВА on 19.03.2021.
//

import UIKit

class CommensTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    func configa(with comment: Article) {
        self.titleLabel.text = comment.title
//        self.discriptionsLabel.text = comment.description
        self.nameLabel.text = comment.sourceName
        
        
        guard verifyUrl(OnViewController: self, urlString: comment.urlToImage) == true else {return self.imageNews.image = UIImage(named: "image-1")}
        let url = URL(string: comment.urlToImage)
        DispatchQueue.main.async {
                self.imageNews.kf.setImage(with: url)
        }
    }
    func verifyUrl(OnViewController vc: CommensTableViewCell, urlString: String?) -> Bool {
        guard let urlString = urlString, let url = URL(string: urlString) else {return false}
        return UIApplication.shared.canOpenURL(url)
    }
}

