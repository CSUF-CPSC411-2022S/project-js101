import Foundation
import SwiftUI
////
////  DefaultBirds.swift
////  BirdSpot
////
////  Created by csuftitan on 4/21/22.
////
//
// Creates bird list of BirdImage objects that can display on command
class DefaultBirds: ObservableObject {
    @Published var birds: [BirdImage] = []
    init() {
        birds.append(BirdImage(filename: "BaldEagle", color: "black", name: "Bald Eagle"))
        birds.append(BirdImage(filename: "BlueJay", color: "blue", name: "Blue Jay"))
        birds.append(BirdImage(filename: "NorthernCardinal", color: "red", name: "Northern Cardinal"))
        birds.append(BirdImage(filename: "Crow", color: "black", name: "American Crow"))
        birds.append(BirdImage(filename: "Crane", color: "white", name: "Crane"))
        birds.append(BirdImage(filename: "Pelican", color: "white", name: "Pelican"))
        birds.append(BirdImage(filename: "BlueBird", color: "blue", name: "Mountain Blue Bird"))
        birds.append(BirdImage(filename: "ScarletMacaw", color: "red", name: "Scarlet Macaw"))
        birds.append(BirdImage(filename: "GrayHawk", color: "gray", name: "Gray Hawk"))
        birds.append(BirdImage(filename: "GreatGrayOwl", color: "gray", name: "Great Gray Owl"))

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
// Has no direct connection to DefaultBirds, serves as a "lookup" so that we can load different details given different arguments
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
