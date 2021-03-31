

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = urlNews else { return }
        
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json as! Dictionary<String, Any>)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
