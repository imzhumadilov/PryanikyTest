//
//  ItemsListRouter.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ItemsListRouter: ItemsListRouterInput {
    
    // MARK: - Props
    weak var view: ItemsListViewController?
    
    // MARK: - Initialization
    init() { }
    
    // MARK: - ItemsListRouterInput
    func pushInformationViewController(name: String, data: DataIn) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(name: name, data: data)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushInformationViewController(name: String, variant: Varinats) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(name: name, variant: variant)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    // MARK: - Module functions
}
