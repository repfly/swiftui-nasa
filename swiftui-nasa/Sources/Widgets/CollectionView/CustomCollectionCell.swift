//
//  CustomCollectionView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import SwiftUI
import Kingfisher
import ASCollectionView_SwiftUI


struct CollectionCell: View {
    let photo: Photo
    var body: some View {
        HStack {
//  Dropping first 4 chars of the img url and add string to satisfy https protocol.
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
