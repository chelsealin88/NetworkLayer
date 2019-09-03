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
    
    static func encoder(urlRequest: inout URLRequest, with Parameter: Parameters) throws
}


public enum ParameterEncoding {
    
    case urlEncoding
    case jsonEncoding
    case urlAndJsonEncoding
    
    public func encode(urlRequest: inout URLRequest,
                       bodyParameters: Parameters?,
                       urlParameters: Parameters?) throws {
        
//        do {
//            
//            switch self {
//            case .urlEncoding:
//                guard let urlParameters = urlParameters else { return }
////                try 
//            default:
//                <#code#>
//            }
//            
//        } catch {
//            throw error
//        }
        
        
    }
    
    
}



public enum NetWorkError: String, Error {
    
    case parametersNil = "Parameters are nil."
    case encodingFailed = "Parameter encoding failed"
    case missingURL = "URL is Nil"
    
    
}
