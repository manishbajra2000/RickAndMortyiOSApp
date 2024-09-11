//
//  GetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 11/09/2024.
//

import Foundation
 

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let results: String?
    }
    let info: Info
    let results: [RMCharacter]
}

