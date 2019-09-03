//
//  ParameterEncoding.swift
//  NetworkLayer
//
//  Created by Chelsea Lin on 2019/9/3.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


public typealias Parameters = [ String : Any ]

public protocol ParameterEncoder {
    
    func encoder(urlRequest: inout URLRequest, with parameters: Parameters) throws
}


public enum ParameterEncoding {
    
    case urlEncoding
    case jsonEncoding
    case urlAndJsonEncoding
    
    public func encode(urlRequest: inout URLRequest,
                       bodyParameters: Parameters?,
                       urlParameters: Parameters?) throws {
        
        do {
            
            switch self {
                
            case .urlEncoding:
                guard let urlParameters = urlParameters else { return }
                try URLParameterEncoder().encoder(urlRequest: &urlRequest, with: urlParameters)
            
            case .jsonEncoding:
                guard let bodyParameters = bodyParameters else { return }
                try JSONParameterEncoder().encoder(urlRequest: &urlRequest, with: bodyParameters)
            
            case .urlAndJsonEncoding:
                guard let bodyParameters = bodyParameters, let urlParameters = urlParameters else { return }
                try URLParameterEncoder().encoder(urlRequest: &urlRequest, with: urlParameters)
                try JSONParameterEncoder().encoder(urlRequest: &urlRequest, with: bodyParameters)
                
            }
            
        } catch {
            throw error
        }
        
        
    }
    
    
}



public enum NetWorkError: String, Error {
    
    case parametersNil = "Parameters are nil."
    case encodingFailed = "Parameter encoding failed"
    case missingURL = "URL is Nil"
    
    
}
