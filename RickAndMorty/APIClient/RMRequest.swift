//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Manish Harsha Bajracharya on 10/09/2024.
//

import Foundation


/// Object that represents a single API call
final class RMRequest{
    // Base url
    // Endpoint
    // Path components
    // Query components
    
    
    
    /// API Constant
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint: Character, Location or Episode
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: Set<String> 
    
    /// Query Arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the API request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        // for Query Parameters:
        // ?name=value&name=value&.... over and over so,
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
        
        
        
    }
    
    /// Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Derired HTTP method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
