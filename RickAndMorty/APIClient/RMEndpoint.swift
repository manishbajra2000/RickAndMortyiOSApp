//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 10/09/2024.
//

import Foundation


/// Represents unique API calls
@frozen enum RMEndpoint: String {
    ///endpoint to get character info
    case character //"character" as a string
    ///endpoint to get location info
    case location
    ///endpoint to get episode info
    case episode
}
