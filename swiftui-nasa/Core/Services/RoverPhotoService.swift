//
//  RoverPhotoService.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import Foundation
import SwiftyJSON
import Alamofire

struct RoverPhotoService {
    // MARK: - Variables

    static let shared = RoverPhotoService();
    typealias completionHandler = ((RoverPhotosModel) -> Void)
    
    // MARK: - Functions
    func fetchImages(
        roverName: RoverName,
        sol: Int,
        page: Int,
        camera: CameraName?,
        completion: @escaping (RoverPhotosModel) -> Void) {
            var queryUrl = "\(APIConstants.baseUrl)/\(roverName.rawValue)/photos?sol=\(sol)&page=\(page)&"
            if (camera != nil) {
                queryUrl = "\(APIConstants.baseUrl)/\(roverName.rawValue)/photos?sol=\(sol)&page=\(page)&camera=\(camera!.rawValue)&";
            }
            print(queryUrl)
            APIClient.shared.createRequest(queryUrl, method: HTTPMethod.get) { result in
                switch result {
                case .success(let data):
                    let response = try! JSONDecoder().decode(RoverPhotosModel.self, from: data);
                    completion(response)
                case .failure(let error):
                    print(error)
                }
            }
        }
}
