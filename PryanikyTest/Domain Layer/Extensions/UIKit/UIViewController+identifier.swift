//
//  UIViewController+identifier.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

extension UIViewController {
    
    public class var identifier: String {
        return String.className(self)
    }
}
