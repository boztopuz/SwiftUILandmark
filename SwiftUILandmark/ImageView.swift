//
//  ImageView.swift
//  SwiftUILandmark
//
//  Created by Burak Öztopuz on 26.07.2022.
//

import SwiftUI

struct ImageView: View {
    
    var image : Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("london"))
    }
}
