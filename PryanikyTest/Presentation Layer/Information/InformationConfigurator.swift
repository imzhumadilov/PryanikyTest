//
//  InformationConfigurator.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum InformationConfigurator {
    
    static func create() -> InformationViewController {
        return InformationViewController(nibName: InformationViewController.identifier, bundle: nil)
    }
    
    static func configure(with reference: InformationViewController) -> InformationPresenterInput {
        let presenter = InformationPresenter()
        
        let router = InformationRouter()
        router.view = reference
        
        presenter.view = reference
        presenter.router = router
        
        reference.output = presenter
        
        return presenter
    }
    
}
