//
//  api.swift
//  BirdSpot
//
//  Created by csuftitan on 4/21/22.
//

import Foundation

struct birdData: Codable {
    let id: Int
    let name: String
    let color: String
    let sciName: String
    let description: String
    let images: [String]
    let infolinks: [String]
}

class birdCollection: ObservableObject {
    @Published var birdlist: [birdData]
    
    init(data: [birdData]) {
        birdlist = data
    }
}
