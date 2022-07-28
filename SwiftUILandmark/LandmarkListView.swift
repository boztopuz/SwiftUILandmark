//
//  LandmarkListView.swift
//  SwiftUILandmark
//
//  Created by Burak Öztopuz on 26.07.2022.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
        VStack{
            List(landmarkArray){ landmark in
                NavigationLink(destination: DetailsView(chosenLandmark: landmark)) {
                    HStack {
                        Image(landmark.imgName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text(landmark.name)
                    }
                }
                
            }.navigationTitle(Text("Landmark List"))
        }
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
