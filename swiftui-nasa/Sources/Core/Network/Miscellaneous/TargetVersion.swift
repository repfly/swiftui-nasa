//
//  TargetVersion.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 2.11.2021.
//

import Foundation

enum TargetVersion {
    case nasaAPI
}

extension TargetVersion {
    
    var scheme: String {
        switch self {
        case .nasaAPI:
            return "https"
        }
    }
    
    var base: String {
        switch self {
        case .nasaAPI:
            return APIConstants.baseUrl
        }
    }
}
