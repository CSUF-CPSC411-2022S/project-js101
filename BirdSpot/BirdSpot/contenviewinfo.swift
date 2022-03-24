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
struct NorthAmericanCrow: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: Crowidae \nGenus: Corvus \nSpecies: C. brachyrhynchos"
    var body: some View{
        VStack{
			Image("American Crow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("American Crow")
            Text(basicinfo)

        }
    }
}
struct HouseSparrow: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: sparrows \nGenus: Passer \nSpecies: Passer domesticus"
    var body: some View{
        VStack{
			Image("House Sparrow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("House sparrow")
            Text(basicinfo)

        }
    }
}
struct HouseFinch: View {
    var basicinfo: String = "Kingdom: Animalia \nPhylum: Chordata \nClass: Aves \nOrder: Passeriformes \nFamily: finches \nGenus: Passer \nSpecies: Passer domesticus"
    var body: some View{
        VStack{
			Image("House Finch")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 90.0, alignment: .center)
                .border(Color.gray, width: 2.0)
                .clipped()
            Text("House Finch")
            Text(basicinfo)

        }
    }
}