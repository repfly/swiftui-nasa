//
//  HomeView.swift
//  Nasa
//
//  Created by Alper Yıldırım on 23.10.2021.
//

import SwiftUI
import QGrid

struct HomeView: View {
    @ObservedObject var viewmodel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        TabView {
            CuriosityView(photos: viewmodel.photos).tabItem {
                Label("Menu", systemImage: "list.dash")
            }
        }
    }
}


