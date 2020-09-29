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
    
    private var type: ViewList?
    private var data: DataIn?
    private var variant: Varinats?
    
    // MARK: - InformationPresenterInput
    func configure(type: ViewList, data: DataIn) {
        self.type = type
        self.data = data
    }
    
    func configure(type: ViewList, variant: Varinats) {
        self.type = type
        self.variant = variant
    }
    
    // MARK: - InformationViewOutput
    func getData() {
        if let type = type, let data = data {
            view?.setup(type: type, data: data)
        } else if let type = type, let variant = variant {
            view?.setup(type: type, variant: variant)
        }
    }
    
    // MARK: - Module functions
}
