//
//  HTTPTask.swift
//  NetworkLayer
//
//  Created by Chelsea Lin on 2019/9/3.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    
    case request
    
    case requestWithParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestWithParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionHeader: HTTPHeaders?)
}
