//
//  Curiosity.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI

struct CuriosityView: View {
    let roverName: String = "Curoisity"
    let photos: [Photo]
    var body: some View {
       CustomCollectionView(data: photos, roverName: roverName)
    }
}


