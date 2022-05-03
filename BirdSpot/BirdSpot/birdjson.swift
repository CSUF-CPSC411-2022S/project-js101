//
//  birdjson.swift
//  BirdSpot
//
//  Created by csuftitan on 4/21/22.
//

import Foundation

struct birdData: Codable, Identifiable {
    let id = UUID()
    var name: String
    var color: String
    var sciName: String
    var description: String
    var images: [String]
    var infolinks: [String]
    
    private enum CodingKeys: String, CodingKey {
        case name
        case color
        case sciName
        case description
        case images
        case infolinks
    }
}

class birdCollection: ObservableObject {
    @Published var birds: [birdData] = []
    
    init(){
        loadData()
    }
    
    func loadData() {
            guard let url = URL(string: "https://jjfromwa.github.io/Data/birds.json") else {
                print("Your API end point is Invalid")
                return
            }
            let request = URLRequest(url: url)

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                  if let response = try? JSONDecoder().decode([birdData].self, from: data) {
                        DispatchQueue.main.async {
                            self.birds = response
                        }
                        return
                    }
                }
            }.resume()
    }
    
    func clear() {
        birds = []
    }
    
}


