//
//  ContentResponse.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

struct ContentResponse: Decodable {
    let url: String?
    let text: String?
    let selectorId: Int?
    let variants: [SelectorContentResponse?]?
    
    func defaultMapping() -> Content {
        return Content(imageUrl: url ?? "",
                       text: text ?? "",
                       selectorId: selectorId ?? 999,
                       variants: variants?.compactMap({ $0?.defaultMapping() }) ?? [] )
    }
}
