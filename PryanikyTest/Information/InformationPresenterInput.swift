//
//  InformationPresenterInput.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol InformationPresenterInput: class {
    func configure(name: String, data: DataIn)
    func configure(name: String, variant: Varinats)
}
