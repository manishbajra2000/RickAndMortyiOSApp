//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 12/09/2024.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    
    public let characterName : String
    private let characterStatus : RMCharacterStatus
    private let characterImageUrl : URL?
    
    
    //MARK: - Init
    
    init(
        characterName : String,
        characterStatus : RMCharacterStatus,
        characterImageUrl : URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    public var characterStatusText: String{
        return characterStatus.rawValue
    }
    
    public func fetchImage (completion: @escaping (Result<Data, Error>) -> Void) {
        
    }
}
