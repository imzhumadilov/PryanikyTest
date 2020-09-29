//
//  DataTypeResponse.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import Foundation

struct DataTypeResponse: Decodable {
    let name: String?
    let data: ContentResponse?
    
    func defaultMapping() -> DataType {
        return DataType(name: name ?? "",
                        data: data?.defaultMapping() ?? Content(imageUrl: "",
                                                                text: "",
                                                                selectorId: 999,
                                                                variants: []) )
    }
}
