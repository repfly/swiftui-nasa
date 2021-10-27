//
//  CustomCollectionView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import SwiftUI
import Kingfisher
import QGrid

struct CustomCollectionView: View {
    let data: [Photo]
    let roverName: String
    
    var body: some View {
        NavigationView {
            QGrid(data, columns: 2, hPadding: 25) { photo in
                CollectionCell(photo: photo)
            }.navigationTitle(roverName)
        }
    }
}



struct CollectionCell: View {
    let photo: Photo
    var body: some View {
        HStack {
            KFImage(URL(string: "https" + (self.photo.imgSrc?.dropFirst(4))!))
                .placeholder {
                    Image(systemName: "arrow.down.doc")
                        .font(.largeTitle)
                        .opacity(0.3)
                }
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
        }
    }
}
