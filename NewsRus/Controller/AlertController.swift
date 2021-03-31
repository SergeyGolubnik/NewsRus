//
//  AlertController.swift
//  NewsRus
//
//  Created by СОВА on 30.03.2021.
//

import Foundation
import UIKit

class AlertController: UITableViewController {
    
    
    static func alertConfiga(OnViewController vc: DashbordTableViewController, Message message: String) {
        

        let alert = UIAlertController(title: "Выберете категорию", message: nil, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Бизнес", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=business&apiKey=\(keyApi)")
            vc.navigation = "Новости бизнеса"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Развлечения", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=entertainment&apiKey=\(keyApi)")
            vc.navigation = "Развлечения"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Здоровье", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=health&apiKey=\(keyApi)")
            vc.navigation = "Новости здоровья"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Наука", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=science&apiKey=\(keyApi)")
            vc.navigation = "Новости науки"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Спорт", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=sports&apiKey=\(keyApi)")
            vc.navigation = "Новости спорта"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Технология", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=technology&apiKey=\(keyApi)")
            vc.navigation = "Новости технологий"
            vc.opdeyt()
        }))
        alert.addAction(UIAlertAction(title: "Все", style: .default, handler: { action in
            urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&category=technology&apiKey=\(keyApi)")
            vc.navigation = "News"
            vc.opdeyt()
        }))
        vc.present(alert, animated: true)
    }
}
