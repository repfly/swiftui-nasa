//
//  Target.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 2.11.2021.
//

import Foundation
import Alamofire

protocol Target {
    var routerVersion: TargetVersion { get }
    var method: HTTPMethod { get }
    var paths: [String] { get }
    var parameter: Data? { get }
    var body: Data? { get }
}
