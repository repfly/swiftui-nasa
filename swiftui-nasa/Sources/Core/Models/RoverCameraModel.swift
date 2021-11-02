//
//  RoverCameraModel.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import Foundation

struct Camera: Codable {
    let id: Int?
    let name: CameraName?
    let roverID: Int?
    let fullName: FullName?

    enum CodingKeys: String, CodingKey {
        case id, name
        case roverID = "rover_id"
        case fullName = "full_name"
    }
}

enum CameraName: String, Codable {
    case fhaz = "FHAZ"
    case rhaz = "RHAZ"
    case mast = "MAST"
    case chemcam = "CHEMCAM"
    case mahli = "MAHLI"
    case mardi = "MARDI"
    case navcam = "NAVCAM"
    case pancam = "PANCAM"
    case minites = "MINITES"
}

enum FullName: String, Codable {
    case fhaz = "Front Hazard Avoidance Camera"
    case rhaz = "Rear Hazard Avoidance Camera"
    case mast = "Mast Camera"
    case chemcam = "Chemistry and Camera Complex"
    case mahli = "Mars Hand Lens Imager"
    case mardi = "Mars Descent Imager"
    case navcam = "Navigation Camera"
    case pancam = "Panoramic Camera"
    case minites = "Miniature Thermal Emission Spectrometer"
}

