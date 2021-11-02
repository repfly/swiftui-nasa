//
//  OpportunityView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI
import ASCollectionView_SwiftUI

struct OpportunityView: View {
    let roverName: String = "Opportunity"
    let photos: [Photo]
    @ObservedObject var viewmodel: HomeViewModel = HomeViewModel()

    var body: some View {
        ASCollectionView (data:viewmodel.photos) { photo, _ in
            CollectionCell(photo: photo)
                .padding(.bottom)
        }
        .onReachedBoundary { boundary in
            viewmodel.fetchPhotos();
        }
        .layout {
            .grid()
        }
    }
}

