//
//  InformationPresenter.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

class InformationPresenter: InformationPresenterInput, InformationViewOutput {
    
    // MARK: - Props
    weak var view: InformationViewInput?
    var router: InformationRouterInput?
    
    // MARK: - Initialization
    init() { }
    
    // MARK: - InformationPresenterInput
    func configure(name: String, data: DataIn) {
        view?.setupView(name: name, data: data)
    }
    
    func configure(name: String, variant: Varinats) {
        view?.setupView(name: name, variant: variant)
    }
    
    // MARK: - InformationViewOutput
    
    // MARK: - Module functions
}
