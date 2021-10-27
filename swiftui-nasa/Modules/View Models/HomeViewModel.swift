//
//  HomeViewModel.swift
//  Nasa
//
//  Created by Alper Yıldırım on 23.10.2021.
//

import Foundation

class HomeViewModel: ObservableObject {
    private var photoService: RoverPhotoService;
    @Published var currentRover: RoverName = RoverName.curiosity;
    @Published var sol: Int = 1;
    @Published var page: Int = 1;
    @Published var cameraFilter: CameraName? = nil;
    @Published var photos: [Photo] = [];
    
    init(photoService: RoverPhotoService = RoverPhotoService()) {
        self.photoService = photoService;
        fetchPhotos()
    }
    
   
    
    func fetchPhotos() {
        photoService.fetchImages(
            roverName: currentRover,
            sol: sol,
            page: page,
            camera: cameraFilter) { result in
                if ((result.photos?.count)! > 0) {
                    self.photos.append(contentsOf: result.photos!)
                } else {
                    self.incrementSolAndFetch()
                }
            }
    }
    
    func incrementSolAndFetch() {
        sol += 1;
        page = 1;
        fetchPhotos();
    }
}
