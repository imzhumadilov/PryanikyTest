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
    
    private var type: ViewList?
    private var content: Content?
    private var selectorContent: SelectorContent?
    
    // MARK: - InformationPresenterInput
    func configure(type: ViewList, content: Content) {
        self.type = type
        self.content = content
    }
    
    func configure(type: ViewList, selectorContent: SelectorContent) {
        self.type = type
        self.selectorContent = selectorContent
    }
    
    // MARK: - InformationViewOutput
    func getData() {
        
        if let type = type, let content = content {
            view?.setup(type: type, content: content)
            
        } else if let type = type, let selectorContent = selectorContent {
            view?.setup(type: type, selectorContent: selectorContent)
        }
    }
}
