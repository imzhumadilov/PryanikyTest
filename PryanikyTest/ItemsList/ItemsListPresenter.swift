//
//  ItemsListPresenter.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

class ItemsListPresenter: ItemsListPresenterInput, ItemsListViewOutput {
    
    // MARK: - Props
    weak var view: ItemsListViewInput?
    var router: ItemsListRouterInput?
    
    let pryanikyService = PryanikyService()
    
    // MARK: - Initialization
    init() { }
    
    // MARK: - ItemsListPresenterInput
    
    // MARK: - ItemsListViewOutput
    func fetchData() {
        
        pryanikyService.getData(url: "https://pryaniky.com/static/json/sample.json") { result in
            switch result {
            case .success(let items):
                self.view?.getData(items: items)
            case .failure(let error):
                print(error.localizedDescription)
            
            }
            
        }
    }
    
    // MARK: - Module functions
}



