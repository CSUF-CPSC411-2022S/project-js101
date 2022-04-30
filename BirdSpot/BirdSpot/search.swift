//
//  search.swift
//  BirdSpot
//
//  Created by csuftitan on 4/28/22.
//

import Foundation

func birdSearch(searchString: String, searchData: [birdData]) -> [birdData] {
    var searchResults = [birdData]()                            // Create birdCollection object to return search results in
    var searchPositive: Bool = false                            // Initialize flag to false
    var mirroredObject: Mirror                                  // Create variable to mirror birds to iterate over attributes
    for bord in searchData {                                    // loop over the bird objects in search space
        mirroredObject = Mirror(reflecting: bord)               // create a mirror object of the bird
        for (_, attr) in mirroredObject.children.enumerated() { // Loop over the attributes in the mirrored bird object
            if let str = attr.value as! String?{                // Unwrap the value of the attribute in bird object
                searchPositive = stringSearch(searchable: str, target: searchString) // Search string value for keyword
            }
        }
        if searchPositive == true { // If flag was tripped positive for the bird, add it to search results
            searchResults.append(bord)
        }
    }

    return searchResults
}

func stringSearch(searchable: String, target: String) -> Bool {
    let searchableComponents = searchable.components(separatedBy: " ")     // Break search space into words
    let targetComponents = target.components(separatedBy: " ")             // Break target string into words
    
    for i in targetComponents{                      // Loop through each word in search space and target string
        for j in searchableComponents{
            if (i == j){
                return true                         // Return true if hit found
            }
        }
    }
    return false
}
