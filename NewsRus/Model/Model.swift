import Foundation


struct Article {
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let sourceName: String

    init(dictionari: Dictionary<String, Any>) {
        author = dictionari["author"] as? String ?? ""
        title = dictionari["title"] as? String ?? ""
        description = dictionari["description"] as? String ?? ""
        url = dictionari["url"] as? String ?? ""
        urlToImage = dictionari["urlToImage"] as? String ?? "image-1"
        publishedAt = dictionari["publishedAt"] as? String ?? ""
        sourceName = (dictionari["source"] as? Dictionary<String, Any> ?? ["":""])["name"] as? String ?? ""
        
        
    }
}
