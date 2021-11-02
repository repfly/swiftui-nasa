//
//  NetworkManagerProtocol.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 2.11.2021.
//

import Foundation
import Combine

protocol NetworkManagerProtocol {
    func publisher(from target: Target) -> AnyPublisher<Data,Error>;
    func publisher(fromUrlString url: String) -> AnyPublisher<Data, Error>;
}
