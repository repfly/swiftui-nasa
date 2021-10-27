//
//  OpportunityView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI

struct OpportunityView: View {
    let roverName: String = "Opportunity"
    let photos: RoverPhotosModel
    var body: some View {
        CustomCollectionView(data: photos.photos ?? [], roverName: roverName)
    }
}

