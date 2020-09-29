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
    func pushInformationViewController(type: ViewList, data: DataIn) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(type: type, data: data)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushInformationViewController(type: ViewList, variant: Varinats) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(type: type, variant: variant)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    // MARK: - Module functions
}
