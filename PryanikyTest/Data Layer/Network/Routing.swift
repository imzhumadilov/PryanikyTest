//
//  Routing.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

enum Routing {
    
    enum UrlPaths {
        static let pryanikyServiceURL = "https://pryaniky.com"
    }
    
    enum Data {
        static let dataJSON = Routing.UrlPaths.pryanikyServiceURL + "/static/json/sample.json"
    }
}
