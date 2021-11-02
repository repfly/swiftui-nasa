//
//  APIClient.swift
//  Nasa
//
//  Created by Alper Yıldırım on 24.10.2021.
//

import Foundation
import Alamofire
import SwiftyJSON

struct APIClient {
    
    static let shared = APIClient();
    typealias completionHandler = ((Result<Data, AFError>) -> Void)
    
    let encoder = JSONEncoder();
    func createRequest(
        _ url: String,
        method: HTTPMethod,
        completion: @escaping completionHandler
    ) {
        let urlWithApiKey = url + "\(APIConstants.apiKeyQueryParameter)=\(APIConstants.apiKey)"
            AF.request(urlWithApiKey, method: method).responseJSON { response in
                switch response.result {
                case .success(_):
                    completion(.success(response.data!))
                case .failure(_):
                    completion(.failure(response.error!))
                }
            
        }
        
    }
}
