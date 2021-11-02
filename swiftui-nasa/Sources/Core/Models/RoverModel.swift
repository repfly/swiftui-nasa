//
//  RoverModel.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import Foundation

struct Rover: Codable {
    let id: Int?
    let name: RoverName?
    let landingDate, launchDate: String?
    let status: Status?

    enum CodingKeys: String, CodingKey {
        case id, name
        case landingDate = "landing_date"
        case launchDate = "launch_date"
        case status
    }
}

enum RoverName: String, Codable {
    case spirit = "Spirit"
    case opportunity = "Opportunity"
    case curiosity = "Curiosity"
}

enum Status: String, Codable {
    case active = "active"
    case complete = "complete"
}
