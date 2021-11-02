//
//  NetorkManager.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 2.11.2021.
//

import Foundation
import Combine

final class NetworkManager: NetworkManagerProtocol {
    func publisher(from target: Target) -> AnyPublisher<Data, Error> {
        var comps = URLComponents();
        comps.scheme = target.routerVersion.scheme;
        comps.host = target.routerVersion.base;
        
    }
    
    func publisher(fromUrlString url: String) -> AnyPublisher<Data, Error> {
        <#code#>
    }
    
    

}
