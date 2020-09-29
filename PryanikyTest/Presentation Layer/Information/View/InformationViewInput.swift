//
//  InformationViewInput.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol InformationViewInput: class {
    
    func setup(type: ViewType, content: Content)
    func setup(type: ViewType, selectorContent: SelectorContent)
}
