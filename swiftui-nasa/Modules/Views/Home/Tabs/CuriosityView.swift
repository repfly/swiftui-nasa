//
//  Curiosity.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI
import ASCollectionView_SwiftUI

struct CuriosityView: View {
    let roverName: String = "Curoisity"
    let photos: [Photo] = []
    @ObservedObject var viewmodel = HomeViewModel();
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


