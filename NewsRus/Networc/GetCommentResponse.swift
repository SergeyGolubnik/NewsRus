

import Foundation

struct GetCommentResponse {
   
    let comments: [Article]
    
    init(json: Dictionary<String, Any>) throws {
        
        guard let array = json["articles"] as? [Dictionary<String, Any>] else { throw NetworkError.failInternetError }
        
        var comments = [Article]()
        
        for dicti in array {
            let comment = Article(dictionari: dicti)
        
            comments.append(comment)
        }
        self.comments = comments
        
    }
    
}
