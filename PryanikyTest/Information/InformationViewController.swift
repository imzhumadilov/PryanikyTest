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
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupComponents()
        setupActions()
    }
    
    override func viewDidLayoutSubviews() {
        self.applyStyles()
    }
    
    // MARK: - InformationViewInput
    func setupView(name: String, data: DataIn) {
        print(name, data)
    }
    
    func setupView(name: String, variant: Varinats) {
        print(name, variant)
    }
}

// MARK: - Setup functions
extension InformationViewController {
    
    func setupComponents() { }
    
    func setupActions() { }
    
    func applyStyles() { }
    
}

// MARK: - Actions
extension InformationViewController { }

// MARK: - Module functions
extension InformationViewController { }

