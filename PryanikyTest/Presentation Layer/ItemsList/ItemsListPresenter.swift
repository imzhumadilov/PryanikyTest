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
    public func fetchData() {
        
        pryanikyService.getData(url: Routing.Data.dataJSON) { result in
            
            switch result {
            
            case .success(let items):
                self.view?.getData(items: items)
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    public func pushInformationViewController(type: ViewList, data: DataIn) {
        router?.pushInformationViewController(type: type, data: data)
    }
    
    
    public func pushInformationViewController(type: ViewList, variant: Varinats) {
        router?.pushInformationViewController(type: type, variant: variant)
    }
}



