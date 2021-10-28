//
//  Curiosity.swift
//  Nasa
//
//  Created by Alper Yıldırım on 25.10.2021.
//

import SwiftUI
import ASCollectionView_SwiftUI
import ExytePopupView
import Kingfisher

struct CuriosityView: View {
    let roverName: String = "Curoisity"
    @State var presentFilterSheet =  false;
    @State var presentContentSheet = false;

    @State var cameraFilter: CameraName?;
    @ObservedObject var viewmodel = HomeViewModel();
    let photos: [Photo] = []
    
    var body: some View {
        NavigationView {
            ASCollectionView (data:viewmodel.photos) { photo, _ in
                CollectionCell(photo: photo)
                    .padding(.bottom).onTapGesture {
                        presentContentSheet.toggle();
                    }
                    .popup(isPresented: $presentContentSheet) {
                        PhotoDetailSheetBody(photo: photo)
                    }
            }
            .onReachedBoundary { boundary in
                viewmodel.fetchPhotos(cameraName: cameraFilter);
            }
            .layout {
                .grid()
            }
            .navigationTitle(roverName)
            .actionSheet(isPresented: $presentFilterSheet, content: {
                let fhaz = ActionSheet.Button.default(Text("FHAZ")) {
                    cameraFilter = CameraName.fhaz
                }
                let rhaz = ActionSheet.Button.default(Text("RHAZ")) {
                    cameraFilter = CameraName.rhaz
                }
                let chemcam = ActionSheet.Button.default(Text("CHEMCAM")) {
                    cameraFilter = CameraName.chemcam
                }
                let mahli = ActionSheet.Button.default(Text("MAHLI")) {
                    cameraFilter = CameraName.mahli
                }
                let mardi = ActionSheet.Button.default(Text("MARDI")) {
                    cameraFilter = CameraName.mardi
                }
                let remove = ActionSheet.Button.destructive(Text("Remove Filters")) {
                    viewmodel.filterByCameraAndFetch(cameraName: nil)
                }
                let cancel = ActionSheet.Button.cancel(Text("Cancel")) {
                    presentFilterSheet.toggle();
                }
                return ActionSheet(title: Text("Filters"), message: nil, buttons: [fhaz, rhaz, chemcam, mahli, mardi, remove, cancel])
            })
            .toolbar {
                ToolbarItem {
                    Image(systemName: "line.3.horizontal.decrease.circle").onTapGesture {
                        presentFilterSheet.toggle();
                    }
                }
            }
        }
    }
}


