//
//  stubstruct.swift
//  BirdSpot
//
//  Created by csuftitan on 4/6/22.
//

import Foundation
import SwiftUI


struct Moreimages: View {
    @State var results = [birdData]()
    var body: some View {
            List(results, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                }
            }.onAppear(perform: loadData)
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
                            self.results = response
                        }
                        return
                    }
                }
            }.resume()
        }
}

struct Moreinformation: View {
    @State var results = [birdData]()
    var body: some View {
            List(results, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                }
            }.onAppear(perform: loadData)
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
                            self.results = response
                        }
                        return
                    }
                }
            }.resume()
        }
}
