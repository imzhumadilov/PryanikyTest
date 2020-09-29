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
    
    // MARK: - ItemsListRouterInput
    func pushInformationViewController(type: ViewType, content: Content) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(type: type, content: content)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func pushInformationViewController(type: ViewType, selectorContent: SelectorContent) {
        let viewController = InformationConfigurator.create()
        let informationPresenterInput = InformationConfigurator.configure(with: viewController)
        informationPresenterInput.configure(type: type, selectorContent: selectorContent)
        
        view?.navigationController?.pushViewController(viewController, animated: true)
    }
}
