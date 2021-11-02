//
//  MockAPIService.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 2.11.2021.
//

import Foundation
import Combine

final class MockAPIService: APIServiceProtocol {
    private let networkManager: NetworkManagerProtocol = MockNetworkService();
}
