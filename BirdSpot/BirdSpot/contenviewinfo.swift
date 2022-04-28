//
//  contenviewinfo.swift
//  BirdSpot
//
//  Created by csuftitan on 3/23/22.
//

import Foundation
import SwiftUI

struct BirdView: View {
    var bird: birdData
    var body: some View{
        VStack{
            AsyncImage(url: URL(string: bird.images[0])){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }.frame(width:300, height: 180)
            Text(bird.name)
            Text(bird.description)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Bald Eagle")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Bald Eagle")
            }
            }
        }
    }
}


