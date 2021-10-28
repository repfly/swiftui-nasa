//
//  State.swift
//  swiftui-nasa
//
//  Created by Alper Yıldırım on 27.10.2021.
//

import Foundation

struct PageState {
    var photos: [Photo] = [];
    var page: Int = 1;
    var sol: Int = 1;
    var canLoadNextPage = true;
}
