//
//  EndpointType.swift
//  NetworkLayer
//
//  Created by Chelsea Lin on 2019/9/3.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import Foundation


protocol EndPointType {
    
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var header: HTTPHeaders? { get }
}
