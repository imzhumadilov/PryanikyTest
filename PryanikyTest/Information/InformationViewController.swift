//
//  InformationViewController.swift
//  PryanikyTest
//
//  Created by Ilyas Zhumadilov on 29.09.2020.
//

import UIKit

class InformationViewController: UIViewController, InformationViewInput {

    // MARK: - Outlets
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var textLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    @IBOutlet private weak var selectorImageView: UIImageView!
    
    // MARK: - Props
    var output: InformationViewOutput?
    
    // MARK: - InformationViewInput
    func setup(type: ViewList, data: DataIn) {
        print(type, data)
    }
    
    func setup(type: ViewList, variant: Varinats) {
        print(type, variant)
    }
}

// MARK: - Setup functions
extension InformationViewController {
    
    func setupView() { }
}

// MARK: - Actions
extension InformationViewController { }

// MARK: - Module functions
extension InformationViewController { }

