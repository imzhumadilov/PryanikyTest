//
//  ItemsResponse.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

struct ItemsResponse: Decodable {
    let data: [DataTypeResponse?]?
    let view: [String?]?
    
    func defaultMapping() -> Items {
        return Items(data: data?.compactMap({ $0?.defaultMapping() }) ?? [],
                     view: view?.compactMap({ $0 ?? "" }) ?? [])
    }
}
