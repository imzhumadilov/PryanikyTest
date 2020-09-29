//
//  InformationViewInput.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol InformationViewInput: class {
    
    func setup(type: ViewList, content: Content)
    func setup(type: ViewList, selectorContent: SelectorContent)
}
