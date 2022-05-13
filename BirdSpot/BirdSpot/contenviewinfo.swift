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
            Text(bird.name).font(.largeTitle)
            AsyncImage(url: URL(string: bird.images[0])){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }.frame(width:300, height: 180)
            Text(bird.description).padding()
            HStack{
                Spacer()
                Text(bird.description)
                Spacer()
            }
            List{
            NavigationLink(destination: Moreimages(bird: bird)){
                Text("For more images of \(bird.name)")
            }
            NavigationLink(destination: Moreinformation(bird: bird)){
                Text("For more information of \(bird.name)")
            }
            }
        }
    }
}


