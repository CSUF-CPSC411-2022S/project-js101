//
//  contenviewinfo.swift
//  BirdSpot
//
//  Created by csuftitan on 3/23/22.
//

import Foundation
import SwiftUI

struct BaldEagle: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Accipitriformes \nFamily: Accipitridae \nGenus: Haliaeetus \nSpecies: H. leucocephalus"
    var body: some View{
        VStack{
            Image("Bald Eagle")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 120.0, alignment: .top)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Bald Eagle")
            Text(basicinfo)
        }
    }
}

struct BlueJay: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: Corvidae \nGenus: Cyanocitta \nSpecies: C. cristata"
    var body: some View{
        VStack{
            Image("Blue Jay")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Blue Jay")
            Text(basicinfo)
        }
    }
}

struct NorthernCardinal: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: Cardinalidae \nGenus: Cardinalis \nSpecies: C. cardinalis"
    var body: some View{
        VStack{
            Image("Northern Cardinal")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Northern Cardinal")
            Text(basicinfo)
            
        }
    }
}
