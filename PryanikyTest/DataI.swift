//
//  DataI.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

struct Items {
    let data: [DataOut]
    let view: [String]
}

struct DataOut {
    let name: String
    let data: DataIn
}

struct DataIn {
    let url: String
    let text: String
    let selectorId: Int
    let variants: [Varinats]
}

struct Varinats {
    let id: Int
    let text: String
}

struct ItemsResponse: Decodable {
    let data: [DataOutResponse?]?
    let view: [String?]?

    func defaultMapping() -> Items {
        return Items(data: data?.compactMap({ $0?.defaultMapping() }) ?? [],
                     view: view?.compactMap({ $0 ?? "" }) ?? [])
    }
}


struct DataOutResponse: Decodable {
    let name: String?
    let data: DataInResponse?
    
    func defaultMapping() -> DataOut {
        return DataOut(name: name ?? "",
                     data: data?.defaultMapping() ?? DataIn(url: "", text: "", selectorId: 99, variants: []) )
    }
}

struct DataInResponse: Decodable {
    let url: String?
    let text: String?
    let selectorId: Int?
    let variants: [VarinatsResponse?]?
    
    func defaultMapping() -> DataIn {
        return DataIn(url: url ?? "",
                     text: text ?? "",
                     selectorId: selectorId ?? 99,
                     variants: variants?.compactMap({ $0?.defaultMapping() }) ?? [] )
    }
}

struct VarinatsResponse: Decodable {
    let id: Int?
    let text: String?
    
    func defaultMapping() -> Varinats {
        return Varinats(id: id ?? 99,
                        text: text ?? "")
    }
}
