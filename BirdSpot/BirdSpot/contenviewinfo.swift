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
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Blue Jay")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Blue Jay")
            }
            }
            
            
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
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Northern Cardinal")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Northern Cardinal")
            }
            }
            
        }
    }
}
struct AmericanCrow: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: Covirdae \nGenus: Corvus \nSpecies: C. brachyrhynchos"
    var body: some View{
        VStack{
            Image("crow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("American Crow")
            Text(basicinfo)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of American Crow")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of American Crow")
            }
            }
            
        }
    }
}
struct Crane: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Gruiformes \nFamily: Gruoidae \nGenus: Grus \nSpecies: C. Vigors"
    var body: some View{
        VStack{
            Image("crane")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Crane")
            Text(basicinfo)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Crane")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Crane")
            }
            }
            
        }
    }
}
struct Pelican: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Pelecaniformes \nFamily: Pelicanidae \nGenus: Pelecanus \nSpecies: C. Pelecanus Linnaeus"
    var body: some View{
        VStack{
            Image("pelican")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Crane")
            Text(basicinfo)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Pelican")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Pelican")
            }
            }
            
        }
    }
}
struct MountainBlueBird: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: Turdidae \nGenus: Sialia \nSpecies: C. currucoldes"
    var body: some View{
        VStack{
            Image("bluebird")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Mountain BlueBird")
            Text(basicinfo)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Mountain BlueBird")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Mountain BlueBird")
            }
            }
            
        }
    }
}
struct ScarletMacaw: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Psittaciformes \nFamily: Psittacidae \nGenus: Ara \nSpecies: A. Macao"
    var body: some View{
        VStack{
            Image("scarletmacaw")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("Scarlet Macaw")
            Text(basicinfo)
            List{
            NavigationLink(destination: Moreimages()){
                Text("For more images of Scarlet Macaw")
            }
            NavigationLink(destination: Moreinformation()){
                Text("For more information of Scarlet Macaw")
            }
            }
            
        }
    }
}
