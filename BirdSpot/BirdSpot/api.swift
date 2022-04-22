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
    @Published var birdlist = [birdData]()
    
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
                            self.birdlist = response
                        }
                        return
                    }
                }
            }.resume()
        }
}
