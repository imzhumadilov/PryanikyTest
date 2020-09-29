//
//  ItemsListViewOutput.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ItemsListViewOutput {
    
    func fetchData()
    func pushInformationViewController(type: ViewList, data: DataIn)
    func pushInformationViewController(type: ViewList, variant: Varinats)
}
