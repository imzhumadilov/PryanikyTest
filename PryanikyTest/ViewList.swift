//
//  ViewList.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

enum ViewList: String {
    case hz
    case selector
    case picture
    case none
    
    var rawValue: String {
        switch self {
        case .hz: return "hz"
        case .selector: return "selector"
        case .picture: return "picture"
        case .none: return ""
        }
    }
}
