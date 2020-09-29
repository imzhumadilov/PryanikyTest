//
//  SelectorContentResponse.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

struct SelectorContentResponse: Decodable {
    let id: Int?
    let text: String?
    
    func defaultMapping() -> SelectorContent {
        return SelectorContent(id: id ?? 999,
                               text: text ?? "")
    }
}
