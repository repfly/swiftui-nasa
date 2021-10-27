//
//  SpiritView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI

struct SpiritView: View {
    let roverName: String = "Spirit"
    let photos: RoverPhotosModel
    var body: some View {
        CustomCollectionView(data: photos.photos ?? [], roverName: roverName)
    }
}

