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
    
    // MARK: - ItemsListViewOutput
    func fetchData() {
        
        pryanikyService.getData(url: Routing.Data.dataJSON) { result in
            
            switch result {
            
            case .success(let items):
                self.view?.getData(items: items)
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func pushInformationViewController(type: ViewType, content: Content) {
        router?.pushInformationViewController(type: type, content: content)
    }
    
    func pushInformationViewController(type: ViewType, selectorContent: SelectorContent) {
        router?.pushInformationViewController(type: type, selectorContent: selectorContent)
    }
}



