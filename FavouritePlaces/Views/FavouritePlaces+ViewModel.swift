//
//  FavouritePlaces+ViewModel.swift
//  FavouritePlaces
//
//  Created by Jack Brighton on 4/5/22.
//

import Foundation

extension FavouritePlaces {
    var placeArray: [Place] {
        place?.array as? [Place] ?? []
    }
}
