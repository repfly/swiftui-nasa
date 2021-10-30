//
//  CustomPopup.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 28.10.2021.
//

import SwiftUI
import Kingfisher

struct PhotoDetailSheetBody: View {
    var photo: Photo;
    var body: some View {
        NavigationView {
            KFImage(URL(string: "https" + (self.photo.imgSrc?.dropFirst(4))!))
                .placeholder {
                    Image(systemName: "arrow.down.doc")
                        .font(.largeTitle)
                        .opacity(0.3)
                }
        }
    }
}
