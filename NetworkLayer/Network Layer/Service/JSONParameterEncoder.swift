//
//  JSONParameterEncoder.swift
//  NetworkLayer
//
//  Created by Chelsea Lin on 2019/9/3.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


public struct JSONParameterEncoder : ParameterEncoder {
    
    
    public func encoder(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody  = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetWorkError.encodingFailed
        }
    }
    
    
    
}
