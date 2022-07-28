//
//  ContentView.swift
//  SwiftUILandmark
//
//  Created by Burak Öztopuz on 26.07.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenLandmark : Landmark
    
    var body: some View {
        VStack{
            MapView(coordinate: chosenLandmark.locationCoordinates)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
                
            ImageView(image: Image(chosenLandmark.imgName))
                .frame(width: UIScreen.main.bounds.width * 0.7)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment : .leading){
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                Divider()
                HStack{
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    Spacer()
                    Text(london.category)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationTitle(Text(chosenLandmark.name))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenLandmark: london)
    }
}
