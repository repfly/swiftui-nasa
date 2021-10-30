//
//  HomeViewModel.swift
//  Nasa
//
//  Created by Alper Yıldırım on 23.10.2021.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // MARK: - Variables
    private var photoService: RoverPhotoService;
    @Published var currentRover: RoverName = RoverName.curiosity;
    @Published var sol: Int;
    @Published var page: Int = 1;
    @Published var cameraFilter: CameraName?;
    @Published var photos: [Photo] = [];
    
    // MARK: - Class init
    init(photoService: RoverPhotoService = RoverPhotoService()) {
        self.photoService = photoService;
        sol = 1;
        fetchPhotos();
    }
    
    // MARK: - Functions
    func appendNewData(roverPhotos: RoverPhotosModel) {
        if (roverPhotos.photos!.count < 2 || page > 4) {
            incrementSolAndFetch();
            return;
        }
        self.photos.append(contentsOf: roverPhotos.photos!);
        self.page += 1;
    }
    
    func incrementSolAndFetch() {
        sol += 1;
        page = 1;
        fetchPhotos();
    }
    
    func changeCurrentRover(roverName: RoverName) {
        self.currentRover = roverName
    }
    
    func filterByCameraAndFetch(cameraName: CameraName?) {
        cameraFilter = cameraName ?? nil;
        self.photos.removeAll()
        fetchPhotos();
    }
    
    func fetchPhotos(cameraName: CameraName? = nil) {
        photoService.fetchImages(
            roverName: currentRover,
            sol: sol,
            page: page,
            camera: cameraName) { result in
                self.appendNewData(roverPhotos: result);
            }
    }
}
