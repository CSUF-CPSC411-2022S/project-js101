//
//  stubstruct.swift
//  BirdSpot
//
//  Created by csuftitan on 4/6/22.
//

import Foundation
import SwiftUI

struct Moreimages: View {
    var bird: birdData
    var body: some View {
        GeometryReader { geometry in
                VStack(spacing: 0) {
                    VStack {
                        List(bird.images, id: \.self) {
                            imgString in
                            AsyncImage(url: URL(string: imgString)){ image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }.frame(width:200, height: 120)
                            
                        }
                    }
                }
        }
    
    }
}
struct Moreinformation: View {
    var bird: birdData
    var body: some View{
        GeometryReader { geometry in
                VStack(spacing: 0) {
                  
                    Text("This page will retrieve more images of the bird selected from stubs")
                }
        }
    
    }
}
