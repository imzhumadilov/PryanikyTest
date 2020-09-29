//
//  ItemsListConfigurator.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum ItemsListConfigurator {
    
    static func create() -> ItemsListViewController {
        return ItemsListViewController(nibName: ItemsListViewController.identifier, bundle: nil)
    }
    
    @discardableResult
    static func configure(with reference: ItemsListViewController) -> ItemsListPresenterInput {
        let presenter = ItemsListPresenter()
        
        let router = ItemsListRouter()
        router.view = reference
        
        presenter.view = reference
        presenter.router = router
        
        reference.output = presenter
        
        return presenter
    }
    
}
