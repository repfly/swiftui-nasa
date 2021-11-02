//
//  RoverPhotoModel.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//
import Foundation

// MARK: - Rover Photos Model
struct RoverPhotosModel: Codable {
    let photos: [Photo]?
}

//Identifiable protocol added later for respecting QGrid package component reqirements.
struct Photo: Codable, Identifiable {
    let id, sol: Int?
    let camera: Camera?
    let imgSrc: String?
    let earthDate: String?
    let rover: Rover?

    enum CodingKeys: String, CodingKey {
        case id, sol, camera
        case imgSrc = "img_src"
        case earthDate = "earth_date"
        case rover
    }
}



