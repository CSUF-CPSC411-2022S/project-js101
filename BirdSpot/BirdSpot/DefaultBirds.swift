import Foundation
import SwiftUI
////
////  DefaultBirds.swift
////  BirdSpot
////
////  Created by csuftitan on 4/21/22.
////
//

class DefaultBirds: ObservableObject {
    @Published var birds: [BirdImage] = []
    init() {
        birds.append(BirdImage(filename: "BaldEagle", color: "red", name: "Bald Eagle"))
        birds.append(BirdImage(filename: "BlueJay", color: "blue", name: "Blue Jay"))
        birds.append(BirdImage(filename: "NorthernCardinal", color: "blue", name: "Northern Cardinal"))
        birds.append(BirdImage(filename: "Crow", color: "blue", name: "American Crow"))
        birds.append(BirdImage(filename: "Crane", color: "blue", name: "Crane"))
        birds.append(BirdImage(filename: "Pelican", color: "blue", name: "Pelican"))
        birds.append(BirdImage(filename: "BlueBird", color: "blue", name: "Mountain Blue Bird"))
        birds.append(BirdImage(filename: "ScarletMacaw", color: "blue", name: "Scarlet Macaw"))
        birds.append(BirdImage(filename: "GrayHawk", color: "blue", name: "Gray Hawk"))
        birds.append(BirdImage(filename: "GreatGrayOwl", color: "blue", name: "Great Gray Owl"))

    }
}

struct BirdImage: Identifiable {
    var id = UUID()
    var filename: String
    var color: String
    var name: String
    func display() -> some View {
        Image(filename)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
}

struct BirdDetail: View {
    var filename: String
    var body: some View {
        switch filename {
            case "BaldEagle":
                BaldEagle()
            case "BlueJay":
                BlueJay()
            case "NorthernCardinal":
                NorthernCardinal()
            case "AmericanCrow":
                AmericanCrow()
            case "Crane":
                Crane()
            case "Pelican":
                Pelican()
            case "MountainBlueBird":
                MountainBlueBird()
            case "ScarletMacaw":
                ScarletMacaw()
            case "GrayHawk":
                GrayHawk()
            case "GreatGrayOwl":
                GreatGrayOwl()
            default:
                GreatGrayOwl()
        }
    }
}
