//
//  ContentView.swift
//  BirdSpot
//
//  Created by csuftitan on 2/23/22.
//


import SwiftUI
import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
          guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
          print("locations = \(locValue.latitude) \(locValue.longitude)")
      }
}




struct HomeScreen: View {
    var viewName = "Birdspot"
    var titleColor = (backColor: Color.gray, textColor: Color.white)
    var body: some View {
        GeometryReader { geometrey in
            NavigationView {
                VStack(spacing: 0){
                    MenuBar(name: viewName, color: titleColor , isMainMenu: true)
                    ColorPaletteView()

                }
            }
        }
    }
}

struct ContentView: View {
    @StateObject var birds = birdCollection()
    var body: some View {
        HomeScreen()
        .environmentObject(birds)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InformationView: View {
    @EnvironmentObject var data: birdCollection
    var viewName = "Information View"
    var titleColor = (backColor: Color.pink, textColor: Color.black)
    var filter: String = ""
    var body: some View {
        GeometryReader { geometry in
                VStack(spacing: 0) {
                    MenuBar(name: viewName, color: titleColor , isMainMenu: false)
                    //Text("The information page will have birds to browse and read information about")
                    List {
                        if(filter != "") {
                            ForEach(data.birds) {
                                bird in
                                if(bird.color == filter) {
                                    Section(header: Text(bird.name)) {
                                        NavigationLink(destination: BirdView(bird: bird)) {
                                            AsyncImage(url: URL(string: bird.images[0])){ image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }.frame(width:200, height: 120)                                        }
                                    }
                                }
                            }
                        } else {
                            ForEach(data.birds) {
                                bird in
                                Section(header: Text(bird.name)) {
                                    NavigationLink(destination: BirdView(bird: bird)) {
                                        Text(bird.name)
                                    }
                                }
                            }
                        }
                }
                    Spacer()
            }
        }
    }
        
}



