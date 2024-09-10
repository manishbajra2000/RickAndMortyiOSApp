//
//  RMService.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 10/09/2024.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService{
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request:RMService, completion: @escaping () -> Void){
        
    }
}
