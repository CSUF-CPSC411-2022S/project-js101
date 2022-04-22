//
//  stubstruct.swift
//  BirdSpot
//
//  Created by csuftitan on 4/6/22.
//

import Foundation
import SwiftUI

/*struct Response: Codable {
    var results: String
}
struct Result: Codable {
    var birdID: Int
    var information: String
}
*/



struct Moreimages: View {
    
    @State var results = [TaskEntry]()
    
    func loadData() {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
                print("Invalid URL")
                return
            }
            let request = URLRequest(url: url)

            URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data {
                    if let response = try? JSONDecoder().decode([TaskEntry].self, from: data) {
                        DispatchQueue.main.async {
                            self.results = response
                        }
                        return
                    }
                }
            }.resume()
        }
    
    var body: some View{
        List(results, id: \.id) { item in
            VStack(alignment: .leading) {
                Text(item.title)
            }
        }.onAppear(perform: loadData)
    }
}

struct Moreinformation: View {
    var body: some View{
        GeometryReader { geometry in
                VStack(spacing: 0) {
                  
                    Text("This page will retrieve more infortmation of the bird selected from stubs")
                }
        }
    
    }
}
