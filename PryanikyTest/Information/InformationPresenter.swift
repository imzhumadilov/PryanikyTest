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
    func configure(type: ViewList, data: DataIn) {
        view?.setup(type: type, data: data)
    }
    
    func configure(type: ViewList, variant: Varinats) {
        view?.setup(type: type, variant: variant)
    }
    
    // MARK: - InformationViewOutput
    
    // MARK: - Module functions
}
