//
//  InformationPresenterInput.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol InformationPresenterInput: class {
    func configure(type: ViewList, data: DataIn)
    func configure(type: ViewList, variant: Varinats)
}
