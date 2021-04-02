//
//  DashbordTableViewController.swift
//  NewsRus
//
//  Created by СОВА on 19.03.2021.
//

import UIKit
import Kingfisher

class DashbordTableViewController: UITableViewController {
    
    var comment = [Article]()
    var navigation = "News"
    

    @IBAction func newsGrupAction(_ sender: UIBarButtonItem) {

        AlertController.alertConfiga(OnViewController: self, Message: "Выберете категорию")
    
    }
    
    @IBAction func refreshNews(_ sender: Any) {
        CommentNetworkService.getComments { (response) in
            self.comment = response.comments
            self.refreshControl?.endRefreshing()
            self.tableView.reloadData()
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.opdeyt()
        
        
        
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return comment.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommensTableViewCell
        
        cell.configa(with: comment[indexPath.row])
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "newsDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let com = comment[indexPath.row]
            
            let newNewsVC = segue.destination as! NewsViewController
            newNewsVC.newsDetailView = com
            
        }
        
    }
    

    func opdeyt() {
        CommentNetworkService.getComments { (response) in
            self.comment = response.comments
            self.navigationItem.title = self.navigation
            self.tableView.reloadData()
        }
    }

}

